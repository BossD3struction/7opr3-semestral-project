package cz.osu.app.controllers;

import cz.osu.app.models.Movie;
import cz.osu.app.models.Review;
import cz.osu.app.models.User;
import cz.osu.app.services.MovieService;
import lombok.AllArgsConstructor;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

@RestController
@AllArgsConstructor
@RequestMapping("/movie")
@CrossOrigin(origins = "http://localhost:4200")
public class MovieController {

    private final MovieService service;

    @GetMapping("/list")
    public List<Movie> getMovies() {
        return service.findAllMovies();
    }

    @PostMapping("/create")
    @Secured(value = {"ROLE_ADMIN"})
    public void createMovie(@RequestBody Movie movie) {
        service.save(movie);
    }

    @PutMapping("/{movieId}/update")
    @Secured(value = {"ROLE_ADMIN"})
    public void updateMovie(@RequestBody Movie movie, @PathVariable("movieId") long movieId) {
        Movie movieFromDb = service.findById(movieId).orElseThrow(() -> new IllegalArgumentException("Movie not found for this id :: " + movieId));
        Objects.requireNonNull(movieFromDb).setName(movie.getName());
        Objects.requireNonNull(movieFromDb).setYear(movie.getYear());
        Objects.requireNonNull(movieFromDb).setRunningTime(movie.getRunningTime());
        Objects.requireNonNull(movieFromDb).setBannerLink(movie.getBannerLink());
        Objects.requireNonNull(movieFromDb).setAbout(movie.getAbout());
        Objects.requireNonNull(movieFromDb).setGenres(movie.getGenres());
        service.save(movieFromDb);
    }

    @DeleteMapping("/{movieId}/delete")
    @Secured(value = {"ROLE_ADMIN"})
    public void deleteMovie(@PathVariable("movieId") long movieId) {
        service.deleteById(movieId);
    }

    @GetMapping("/{movieId}/reviews")
    public List<Review> getMovieReviews(@PathVariable("movieId") long movieId) {
        Movie movie = service.findById(movieId).orElseThrow(() -> new IllegalArgumentException("Movie not found for this id :: " + movieId));
        return service.findByMovie(movie);
    }
}
