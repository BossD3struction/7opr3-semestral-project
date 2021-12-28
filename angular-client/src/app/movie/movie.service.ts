import {Injectable} from '@angular/core';
import {HttpClient, HttpHeaders} from '@angular/common/http';
import {Movie} from './movie';
import {Observable} from 'rxjs';

@Injectable()
export class MovieService {

  constructor(private http: HttpClient) {
  }

  /*// @ts-ignore
  public generateToken(request) {
    return this.http.post("http://localhost:8080/authenticate", request, {responseType: 'text' as 'json'});
  }*/

  // @ts-ignore
  public listMovies(token): Observable<Movie[]> {
    let tokenStr = 'Bearer ' + token;
    const headers = new HttpHeaders().set("Authorization", tokenStr);
    return this.http.get<Movie[]>("http://localhost:8080/movie/list", {headers});
    //return this.http.get<Movie[]>("http://localhost:8080/movie/list", {headers, responseType: 'text' as 'json'});
  }
}
