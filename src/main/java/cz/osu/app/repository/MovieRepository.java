package cz.osu.app.repository;

import cz.osu.app.model.Movie;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MovieRepository extends JpaRepository<Movie, Long> {

    void deleteById(long movieId);
}
