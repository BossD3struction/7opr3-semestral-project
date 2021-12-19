package cz.osu.app.service;

import cz.osu.app.model.User;
import cz.osu.app.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@AllArgsConstructor
public class UserService {

    private final UserRepository userRepository;

    public List<User> findAllUsers() {
        return userRepository.findAll();
    }

    public void save(User user) {
        userRepository.save(user);
    }

    public void deleteById(long userId) {
        userRepository.deleteById(userId);
    }

    public Optional<User> findById(long id) {
        return userRepository.findById(id);
    }
}
