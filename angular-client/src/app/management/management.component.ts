import {Component, OnInit} from '@angular/core';
import {TokenStorageService} from "../_services/token-storage.service";
import {Movie} from "../models/movie";
import {MovieService} from "../_services/movie.service";
import {Genre} from "../models/genre";
import {GenreService} from "../_services/genre.service";

@Component({
  selector: 'app-management',
  templateUrl: './management.component.html',
  styleUrls: ['./management.component.css']
})
export class ManagementComponent implements OnInit {

  // @ts-ignore
  content: string;
  // @ts-ignore
  text: string;
  currentUser: any;
  movies: Movie[] = [];
  genres: Genre[] = [];
  form: any = {};
  isSuccessful = false;
  isAddMovieFailed = false;
  errorMessage = '';
  genresFormArray: Array<any> = [];

  constructor(private token: TokenStorageService, private movieService: MovieService, private genreService: GenreService) {
  }

  onChange(id: number, isChecked: boolean) {
    if (isChecked) {
      this.genresFormArray.push(id);
    } else {
      let index = this.genresFormArray.indexOf(id);
      this.genresFormArray.splice(index, 1);
    }
  }

  ngOnInit(): void {
    this.currentUser = this.token.getUser();
    this.genreService.listGenres().subscribe(
      data => {
        this.genres = data;
      }, err => {
        this.content = JSON.parse(err.error).message;
      }
    );
  }

  onSubmit(): void {
    this.movieService.saveMovie(this.form, this.genresFormArray).subscribe(
      data => {
        console.log(data);
        this.isSuccessful = true;
        this.isAddMovieFailed = false;
      },
      err => {
        this.errorMessage = err.error.message;
        this.isAddMovieFailed = true;
      }
    );
  }

}
