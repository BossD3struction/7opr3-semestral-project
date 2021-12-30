package cz.osu.app.controllers;

import cz.osu.app.models.Review;
import cz.osu.app.services.ReviewService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

@RestController
@AllArgsConstructor
@RequestMapping("/review")
@CrossOrigin(origins = "http://localhost:4200")
public class ReviewController {

    private final ReviewService service;

    @GetMapping("/list")
    public List<Review> getReviews() {
        return service.findAllReviews();
    }

    @PostMapping("/create")
    public void createReview(@RequestBody Review review) {
        service.save(review);
    }

    @PutMapping("/{reviewId}/update")
    public void updateReview(@RequestBody Review review, @PathVariable("reviewId") long reviewId) {
        Review reviewFromDb = service.findById(reviewId).orElseThrow(() -> new IllegalArgumentException("Review not found for this id :: " + reviewId));
        Objects.requireNonNull(reviewFromDb).setUser(review.getUser());
        Objects.requireNonNull(reviewFromDb).setMovie(review.getMovie());
        Objects.requireNonNull(reviewFromDb).setText(review.getText());
        service.save(reviewFromDb);
    }

    @DeleteMapping("/{reviewId}/delete")
    public void deleteReview(@PathVariable("reviewId") long reviewId) {
        service.deleteById(reviewId);
    }
}
