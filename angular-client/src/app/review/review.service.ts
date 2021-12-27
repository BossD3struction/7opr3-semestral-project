import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {Review} from "./review";

@Injectable()
export class ReviewService {

  private reviewsUrl!: string;

  constructor(private http: HttpClient) {
    //this.reviewsUrl = 'http://localhost:8080/movie/{movieId}/reviews';
  }

  public findAll(id: string | null): Observable<Review[]> {
    this.reviewsUrl = 'http://localhost:8080/movie/' + id + '/reviews';
    return this.http.get<Review[]>(this.reviewsUrl);
  }

  public save(review: Review) {
    return this.http.post<Review>(this.reviewsUrl, review);
  }
}
