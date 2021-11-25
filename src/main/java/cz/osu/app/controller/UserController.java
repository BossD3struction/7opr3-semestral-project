package cz.osu.app.controller;

import cz.osu.app.model.User;
import cz.osu.app.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@AllArgsConstructor
public class UserController {

    private final UserService service;

    @GetMapping("/user/list")
    public String getUserList(Model model) {

        List<User> users = service.findAllUsers();
        model.addAttribute("users", users);

        return "user/list";
    }

    @GetMapping("/user/create")
    public String getCreate() {

        return "user/create";
    }

    @PostMapping("/user/create")
    public RedirectView postCreate(
            @RequestParam("nickname") String nickname,
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            @RequestParam("isAdmin") boolean isAdmin) {

        service.save(new User(nickname, email, password, isAdmin));

        return new RedirectView("/user/list");
    }
}
