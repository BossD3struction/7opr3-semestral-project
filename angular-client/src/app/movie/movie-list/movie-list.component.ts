import {Component, OnInit} from '@angular/core';
import {Movie} from '../movie';
import {MovieService} from '../movie.service';

@Component({
  selector: 'app-movie-list',
  templateUrl: './movie-list.component.html',
  styleUrls: ['./movie-list.component.css']
})
export class MovieListComponent implements OnInit {

  authRequest: any = {
    "nickName": "ThisComesFromPostmanUPDATED",
    "password": "helloThere85"
  }

  response: any;

  movies: Movie[] = [];

  constructor(private movieService: MovieService) {
  }

  ngOnInit(): void {
    this.getAccessToken(this.authRequest);
    //this.movies
    /*this.movieService.findAll().subscribe(data => {
      this.movies = data;
    });*/
  }

  // @ts-ignore
  public getAccessToken(authRequest) {
    let resp = this.movieService.generateToken(authRequest)
    resp.subscribe(data => this.accessApi(data));
  }

  // @ts-ignore
  public accessApi(token) {
    let resp = this.movieService.listMovies(token);
    resp.subscribe(data => this.response = data)
  }
}

