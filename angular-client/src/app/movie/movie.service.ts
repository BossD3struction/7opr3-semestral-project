import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Movie} from './movie';
import {Observable} from 'rxjs';

@Injectable()
export class MovieService {

  private readonly moviesUrl: string;

  constructor(private http: HttpClient) {
    this.moviesUrl = 'http://localhost:8080/movie/list';
  }

  public findAll(): Observable<Movie[]> {
    return this.http.get<Movie[]>(this.moviesUrl);
  }

  public save(movie: Movie) {
    return this.http.post<Movie>(this.moviesUrl, movie);
  }
}
