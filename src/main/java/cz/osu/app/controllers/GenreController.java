package cz.osu.app.controllers;

import cz.osu.app.models.Genre;
import cz.osu.app.services.GenreService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

@RestController
@AllArgsConstructor
public class GenreController {

    private final GenreService service;

    @GetMapping("/genre/list")
    public List<Genre> getGenres() {
        return service.findAllGenres();
    }

    @PostMapping("/genre/create")
    public void createGenre(@RequestBody Genre genre) {
        service.save(genre);
    }

    @PutMapping("/genre/update/{genreId}")
    public void updateGenre(@RequestBody Genre genre, @PathVariable("genreId") long genreId) {
        Genre genreFromDb = service.findById(genreId).orElseThrow(() -> new IllegalArgumentException("Genre not found for this id :: " + genreId));
        Objects.requireNonNull(genreFromDb).setName(genre.getName());
        service.save(genreFromDb);
    }

    @DeleteMapping("genre/delete/{genreId}")
    public void deleteGenre(@PathVariable("genreId") long genreId) {
        service.deleteById(genreId);
    }

    @GetMapping("/genre/list/{genreId}")
    public Optional<Genre> getGenreById(@PathVariable("genreId") long genreId) {
        return service.findById(genreId);
    }
}
