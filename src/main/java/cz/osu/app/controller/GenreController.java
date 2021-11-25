package cz.osu.app.controller;

import cz.osu.app.model.Genre;
import cz.osu.app.service.GenreService;
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
public class GenreController {

    private final GenreService service;

    @GetMapping("/genre/list")
    public String getGenreList(Model model) {

        List<Genre> genres = service.findAllGenres();
        model.addAttribute("genres", genres);

        return "genre/list";
    }

    @GetMapping("/genre/create")
    public String getCreate() {

        return "genre/create";
    }

    @PostMapping("/genre/create")
    public RedirectView postCreate(
            @RequestParam("name") String name) {

        service.save(new Genre(name));

        return new RedirectView("/genre/list");
    }
}
