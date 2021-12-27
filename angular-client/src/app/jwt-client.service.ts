import {Injectable} from '@angular/core';
import {HttpClient, HttpHeaders} from "@angular/common/http";

@Injectable()
export class JwtClientService {

  constructor(private http: HttpClient) {
  }

  // @ts-ignore
  public generateToken(request) {
    return this.http.post("http://localhost:8080/authenticate", request, {responseType: 'text' as 'json'});
  }

  // @ts-ignore
  public welcome(token) {
    let tokenStr = 'Bearer ';
    const headers = new HttpHeaders().set("Authorization", tokenStr);
    return this.http.get("http://localhost:8080/welcome", {headers, responseType: 'text' as 'json'});
  }
}
