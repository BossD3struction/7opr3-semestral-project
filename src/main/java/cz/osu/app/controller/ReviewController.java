package cz.osu.app.controller;

import cz.osu.app.model.Movie;
import cz.osu.app.model.Review;
import cz.osu.app.model.User;
import cz.osu.app.service.ReviewService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@AllArgsConstructor
public class ReviewController {

    private final ReviewService service;

    @GetMapping("/review/list")
    public String getMovieList(Model model) {

        List<Review> reviews = service.findAllReviews();
        model.addAttribute("reviews", reviews);

        return "review/list";
    }

    @GetMapping("/review/create")
    public String getCreate(Model model) {

        List<User> users = service.findAllUsers();
        List<Movie> movies = service.findAllMovies();
        model.addAttribute("users", users);
        model.addAttribute("movies", movies);

        return "review/create";
    }

    @PostMapping("/review/create")
    public RedirectView postCreate(
            @RequestParam("user") long userId,
            @RequestParam("movie") long movieId,
            @RequestParam("text") String text) {

        User user = service.getUser(userId);
        Movie movie = service.getMovie(movieId);
        service.save(new Review(user, movie, text));

        return new RedirectView("/review/list");
    }
}
