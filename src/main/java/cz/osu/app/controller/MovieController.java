package cz.osu.app.controller;

import cz.osu.app.model.Movie;
import cz.osu.app.service.MovieService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

@RestController
@AllArgsConstructor
public class MovieController {

    private final MovieService service;

    @GetMapping("/movie/list")
    public List<Movie> getAllMovies() {
        return service.findAllMovies();
    }

    @PostMapping("/movie/create")
    public void createMovie(@RequestBody Movie movie) {
        service.save(movie);
    }

    @PutMapping("/movie/update/{movieId}")
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

    @DeleteMapping("movie/delete/{movieId}")
    public void deleteMovie(@PathVariable("movieId") long movieId) {
        service.deleteById(movieId);
    }
}
