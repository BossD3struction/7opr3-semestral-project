package cz.osu.app.repositories;

import cz.osu.app.models.Movie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MovieRepository extends JpaRepository<Movie, Long> {

    void deleteById(long movieId);
}
