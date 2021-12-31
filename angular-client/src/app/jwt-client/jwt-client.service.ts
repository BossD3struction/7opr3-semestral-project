import {Injectable} from '@angular/core';
import {HttpClient} from "@angular/common/http";

@Injectable()
export class JwtClientService {

  constructor(private http: HttpClient) {
  }

  // @ts-ignore
  public generateToken(request) {
    return this.http.post("http://localhost:8080/authenticate", request, {responseType: 'text' as 'json'});
  }
}
