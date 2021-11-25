package cz.osu.app.repository;

import cz.osu.app.model.Genre;
import cz.osu.app.model.Movie;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface GenreRepository extends JpaRepository<Genre, Long> {

    List<Genre> findByMovies(Movie movie);
}
