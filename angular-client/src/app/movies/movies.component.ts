import {Component, OnInit} from '@angular/core';
import {Movie} from "../models/movie";
import {MovieService} from "../_services/movie.service";

@Component({
  selector: 'app-movies',
  templateUrl: './movies.component.html',
  styleUrls: ['./movies.component.css']
})
export class MoviesComponent implements OnInit {

  currentUser: any;

  // @ts-ignore
  content: string;
  movies: Movie[] = []

  constructor(private movieService: MovieService) {
  }

  ngOnInit(): void {
    this.movieService.listMovies().subscribe(
      data => {
        this.movies = data;
      }, err => {
        this.content = JSON.parse(err.error).message;
      }
    );
  }

}
