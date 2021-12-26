package cz.osu.app.repositories;

import cz.osu.app.models.Movie;
import cz.osu.app.models.Review;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Long> {

    void deleteById(long reviewId);

    List<Review> findByMovie(Movie movie);
}
