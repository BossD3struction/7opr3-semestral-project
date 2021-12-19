package cz.osu.app.repository;

import cz.osu.app.model.Review;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReviewRepository extends JpaRepository<Review, Long> {

    void deleteById(long reviewId);
}
