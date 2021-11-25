package cz.osu.app.controller;

import cz.osu.app.model.Genre;
import cz.osu.app.model.Movie;
import cz.osu.app.service.MovieService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import java.util.ArrayList;
import java.util.List;

@Controller
@AllArgsConstructor
public class MovieController {

    private final MovieService service;

    @GetMapping("/movie/list")
    public String getMovieList(Model model) {

        List<Movie> movies = service.findAllMovies();
        model.addAttribute("movies", movies);

        return "movie/list";
    }

    @GetMapping("/movie/create")
    public String getCreate(Model model) {

        List<Genre> genres = service.findAllGenres();
        model.addAttribute("genres", genres);

        return "movie/create";
    }

    @GetMapping("/movie/{id}/genres")
    public String getGenres(Model model, @PathVariable Long id) {

        Movie movie = service.getMovie(id);
        model.addAttribute("movie", service.findById(id));
        model.addAttribute("genres", service.findByMovies(movie));

        return "movie/genres";
    }

    @PostMapping("/movie/create")
    public RedirectView postCreate(
            @RequestParam("name") String name,
            @RequestParam("year") int year,
            @RequestParam("runningTime") int runningTime,
            @RequestParam("bannerLink") String bannerLink,
            @RequestParam("about") String about,
            @RequestParam(name = "genreIdsChecked", required = false) List<Long> genreIdsChecked) {

        if (genreIdsChecked != null) {
            List<Genre> genres = new ArrayList<>();
            for (Long genreId : genreIdsChecked) {
                genres.add(service.getGenre(genreId));
            }
            service.save(new Movie(name, year, runningTime, bannerLink, about, genres));
        } else {
            service.save(new Movie(name, year, runningTime, bannerLink, about));
        }

        return new RedirectView("/movie/list");
    }
}
