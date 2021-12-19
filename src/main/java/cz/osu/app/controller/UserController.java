package cz.osu.app.controller;

import cz.osu.app.model.User;
import cz.osu.app.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

@RestController
@AllArgsConstructor
public class UserController {

    private final UserService service;

    @GetMapping("/user/list")
    public List<User> getAllUsers() {
        return service.findAllUsers();
    }

    @PostMapping("/user/create")
    public void createUser(@RequestBody User user) {
        service.save(user);
    }

    @PutMapping("/user/update/{userId}")
    public void updateUser(@RequestBody User user, @PathVariable("userId") long userId) {
        User userFromDb = service.findById(userId).orElseThrow(() -> new IllegalArgumentException("User not found for this id :: " + userId));
        Objects.requireNonNull(userFromDb).setNickname(user.getNickname());
        Objects.requireNonNull(userFromDb).setEmail(user.getEmail());
        Objects.requireNonNull(userFromDb).setPassword(user.getPassword());
        Objects.requireNonNull(userFromDb).setAdmin(user.isAdmin());
        service.save(userFromDb);
    }

    @DeleteMapping("user/delete/{userId}")
    public void deleteUser(@PathVariable("userId") long userId) {
        service.deleteById(userId);
    }
}
