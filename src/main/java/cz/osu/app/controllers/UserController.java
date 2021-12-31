package cz.osu.app.controllers;

import cz.osu.app.models.User;
import cz.osu.app.services.UserService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

@RestController
@AllArgsConstructor
@RequestMapping("/user")
@CrossOrigin(origins = "http://localhost:4200")
public class UserController {

    private final UserService service;

    @GetMapping("/list")
    public List<User> getUsers() {
        return service.findAllUsers();
    }

    @PostMapping("/create")
    public void createUser(@RequestBody User user) {
        service.save(user);
    }

    @PutMapping("/{userId}/update")
    public void updateUser(@RequestBody User user, @PathVariable("userId") long userId) {
        User userFromDb = service.findById(userId).orElseThrow(() -> new IllegalArgumentException("User not found for this id :: " + userId));
        Objects.requireNonNull(userFromDb).setNickname(user.getNickname());
        Objects.requireNonNull(userFromDb).setEmail(user.getEmail());
        Objects.requireNonNull(userFromDb).setPassword(user.getPassword());
        Objects.requireNonNull(userFromDb).setAdmin(user.isAdmin());
        service.save(userFromDb);
    }

    @DeleteMapping("/{userId}/delete")
    public void deleteUser(@PathVariable("userId") long userId) {
        service.deleteById(userId);
    }
}
