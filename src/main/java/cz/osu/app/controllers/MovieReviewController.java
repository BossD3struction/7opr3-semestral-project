package cz.osu.app.controllers;

import cz.osu.app.models.Movie;
import cz.osu.app.models.Review;
import cz.osu.app.services.MovieService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@AllArgsConstructor
@CrossOrigin(origins = "http://localhost:4200")
public class MovieReviewController {

    private final MovieService service;

    @GetMapping("/movie/{movieId}/reviews")
    public List<Review> getMovieReviews(@PathVariable("movieId") long movieId) {
        Movie movie = service.findById(movieId).orElseThrow(() -> new IllegalArgumentException("Movie not found for this id :: " + movieId));
        return service.findByMovie(movie);
    }
}
