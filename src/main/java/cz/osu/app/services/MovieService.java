package cz.osu.app.services;

import cz.osu.app.models.Genre;
import cz.osu.app.models.Movie;
import cz.osu.app.repositories.GenreRepository;
import cz.osu.app.repositories.MovieRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@AllArgsConstructor
public class MovieService {

    private final MovieRepository movieRepository;
    private final GenreRepository genreRepository;

    public Genre getGenre(long genreId) {
        return findAllGenres().stream()
                .filter((q) -> q.getId() == genreId)
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Unknown genre id " + genreId));
    }

    public Movie getMovie(long movieId) {
        return findAllMovies().stream()
                .filter((q) -> q.getId() == movieId)
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Unknown movie id " + movieId));
    }

    public void save(Movie movie) {
        movieRepository.save(movie);
    }

    public void deleteById(long movieId) {
        movieRepository.deleteById(movieId);
    }

    public Optional<Movie> findById(long id) {
        return movieRepository.findById(id);
    }

    public List<Genre> findByMovies(Movie movie) {
        return genreRepository.findByMovies(movie);
    }

    public List<Genre> findAllGenres() {
        return genreRepository.findAll();
    }

    public List<Movie> findAllMovies() {
        return movieRepository.findAll();
    }
}
