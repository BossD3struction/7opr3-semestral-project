import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {User} from "../models/user";

const API_URL = 'http://localhost:8080/user/';

@Injectable({providedIn: 'root'})
export class UserService {

  constructor(private http: HttpClient) {
  }

  listUsers(): Observable<User[]> {
    return this.http.get<User[]>(API_URL + 'list');
  }

  /*public save(user: User) {
    return this.http.post<User>(this.usersUrl, user);
  }*/
}
