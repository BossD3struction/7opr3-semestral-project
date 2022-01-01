import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {Review} from "../models/review";

const API_URL = 'http://localhost:8080/movie/';

@Injectable({providedIn: 'root'})
export class ReviewService {

  constructor(private http: HttpClient) {
  }

  public listMovieReviews(id: string): Observable<Review[]> {
    return this.http.get<Review[]>(API_URL + id + '/reviews');
  }
}
