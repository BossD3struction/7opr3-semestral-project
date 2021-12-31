import {Component, OnInit} from '@angular/core';
import {Movie} from '../movie';
import {MovieService} from '../movie.service';
import {JwtClientService} from "../../jwt-client/jwt-client.service";

@Component({
  selector: 'app-movie-list',
  templateUrl: './movie-list.component.html',
  styleUrls: ['./movie-list.component.css']
})
export class MovieListComponent implements OnInit {

  authRequest: any = {
    "nickName": "GreenGoblin75",
    "password": "heslo"
  }

  movies: Movie[] = [];

  constructor(private movieService: MovieService, private jwtClientService: JwtClientService) {
  }

  ngOnInit(): void {
    this.getAccessToken(this.authRequest);
  }

  // @ts-ignore
  public getAccessToken(authRequest) {
    let resp = this.jwtClientService.generateToken(authRequest)
    resp.subscribe(data => this.accessApi(data));
  }

  // @ts-ignore
  public accessApi(token) {
    let resp = this.movieService.listMovies(token)
    resp.subscribe(data => this.movies = data);
  }
}
