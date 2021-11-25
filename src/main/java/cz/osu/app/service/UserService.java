package cz.osu.app.service;

import cz.osu.app.model.User;
import cz.osu.app.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@AllArgsConstructor
public class UserService {

    private final UserRepository userRepository;

    public List<User> findAllUsers() {

        return new ArrayList<>(userRepository.findAll());
    }

    public void save(User user) {

        userRepository.save(user);
    }
}
