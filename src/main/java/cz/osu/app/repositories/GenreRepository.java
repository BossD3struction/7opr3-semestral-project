package cz.osu.app.repositories;

import cz.osu.app.models.Genre;
import cz.osu.app.models.Movie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GenreRepository extends JpaRepository<Genre, Long> {

    List<Genre> findByMovies(Movie movie);

    void deleteById(long genreId);
}
