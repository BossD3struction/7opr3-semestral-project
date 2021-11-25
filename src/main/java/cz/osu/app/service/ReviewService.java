package cz.osu.app.service;

import cz.osu.app.model.Movie;
import cz.osu.app.model.Review;
import cz.osu.app.model.User;
import cz.osu.app.repository.MovieRepository;
import cz.osu.app.repository.ReviewRepository;
import cz.osu.app.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@AllArgsConstructor
public class ReviewService {

    private final ReviewRepository reviewRepository;
    private final UserRepository userRepository;
    private final MovieRepository movieRepository;

    public User getUser(long userId) {

        return findAllUsers().stream()
                .filter((q) -> q.getId() == userId)
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Unknown user id " + userId));
    }

    public Movie getMovie(long movieId) {

        return findAllMovies().stream()
                .filter((q) -> q.getId() == movieId)
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Unknown movie id " + movieId));
    }

    public void save(Review review) {

        reviewRepository.save(review);
    }

    public List<User> findAllUsers() {

        return new ArrayList<>(userRepository.findAll());
    }

    public List<Movie> findAllMovies() {

        return new ArrayList<>(movieRepository.findAll());
    }

    public List<Review> findAllReviews() {

        return new ArrayList<>(reviewRepository.findAll());
    }
}
