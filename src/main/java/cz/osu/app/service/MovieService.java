package cz.osu.app.service;

import cz.osu.app.model.Genre;
import cz.osu.app.model.Movie;
import cz.osu.app.repository.GenreRepository;
import cz.osu.app.repository.MovieRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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

    public Optional<Movie> findById(long id) {

        return movieRepository.findById(id);
    }

    public List<Genre> findByMovies(Movie movie) {

        return genreRepository.findByMovies(movie);
    }

    public List<Genre> findAllGenres() {

        return new ArrayList<>(genreRepository.findAll());
    }

    public List<Movie> findAllMovies() {

        return new ArrayList<>(movieRepository.findAll());
    }
}
