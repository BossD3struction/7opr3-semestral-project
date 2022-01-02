import {Component, OnInit} from '@angular/core';
import {TokenStorageService} from "../_services/token-storage.service";
import {ReviewService} from "../_services/review.service";
import {Movie} from "../models/movie";
import {MovieService} from "../_services/movie.service";

@Component({
  selector: 'app-add-review',
  templateUrl: './add-review.component.html',
  styleUrls: ['./add-review.component.css']
})
export class AddReviewComponent implements OnInit {

  // @ts-ignore
  content: string;
  // @ts-ignore
  text: string;
  currentUser: any;
  movies: Movie[] = [];
  form: any = {};
  isSuccessful = false;
  isAddReviewFailed = false;
  errorMessage = '';

  constructor(private token: TokenStorageService, private reviewService: ReviewService, private movieService: MovieService) {
  }

  ngOnInit(): void {
    this.currentUser = this.token.getUser();
    this.movieService.listMovies().subscribe(
      data => {
        this.movies = data;
      }, err => {
        this.content = JSON.parse(err.error).message;
      }
    );
  }

  onSubmit(): void {
    this.reviewService.saveReview(this.form).subscribe(
      data => {
        console.log(data);
        this.isSuccessful = true;
        this.isAddReviewFailed = false;
      },
      err => {
        this.errorMessage = err.error.message;
        this.isAddReviewFailed = true;
      }
    );
  }

}
