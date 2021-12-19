package cz.osu.app.service;

import cz.osu.app.model.Genre;
import cz.osu.app.repository.GenreRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@AllArgsConstructor
public class GenreService {

    private final GenreRepository genreRepository;

    public List<Genre> findAllGenres() {
        return genreRepository.findAll();
    }

    public Optional<Genre> findById(long id) {
        return genreRepository.findById(id);
    }

    public void save(Genre genre) {
        genreRepository.save(genre);
    }

    public void deleteById(long genreId) {
        genreRepository.deleteById(genreId);
    }
}
