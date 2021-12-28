import {Injectable} from '@angular/core';
import {HttpClient, HttpHeaders} from '@angular/common/http';
import {Observable} from 'rxjs';
import {Review} from "./review";

@Injectable()
export class ReviewService {

  constructor(private http: HttpClient) {
  }

  // @ts-ignore
  public listMovieReviews(id: string, token): Observable<Review[]> {
    let tokenStr = 'Bearer ' + token;
    let url = 'http://localhost:8080/movie/' + id + '/reviews';
    const headers = new HttpHeaders().set("Authorization", tokenStr);
    return this.http.get<Review[]>(url, {headers});
  }
}
