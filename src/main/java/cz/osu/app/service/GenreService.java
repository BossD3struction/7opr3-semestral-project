package cz.osu.app.service;

import cz.osu.app.model.Genre;
import cz.osu.app.repository.GenreRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@AllArgsConstructor
public class GenreService {

    private final GenreRepository genreRepository;

    public List<Genre> findAllGenres() {

        return new ArrayList<>(genreRepository.findAll());
    }

    public void save(Genre genre) {

        genreRepository.save(genre);
    }
}
