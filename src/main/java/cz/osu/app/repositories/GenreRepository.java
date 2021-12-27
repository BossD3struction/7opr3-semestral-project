package cz.osu.app.repositories;

import cz.osu.app.models.Genre;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GenreRepository extends JpaRepository<Genre, Long> {

    void deleteById(long genreId);

    //List<Genre> findByMovies(Movie movie);
}
