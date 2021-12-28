import {Component, OnInit} from '@angular/core';
import {JwtClientService} from "../jwt-client.service";

@Component({
  selector: 'app-security',
  templateUrl: './security.component.html',
  styleUrls: ['./security.component.css']
})
export class SecurityComponent implements OnInit {

  authRequest: any = {
    "nickName": "ThisComesFromPostmanUPDATED",
    "password": "helloThere85"
  }

  response: any;

  constructor(private service: JwtClientService) {
  }

  ngOnInit(): void {
    this.getAccessToken(this.authRequest);
  }

  // @ts-ignore
  public getAccessToken(authRequest) {
    let resp = this.service.generateToken(authRequest)
    resp.subscribe(data => this.accessApi(data));
  }

  // @ts-ignore
  public accessApi(token) {
    let resp = this.service.welcome(token);
    resp.subscribe(data => this.response = data)
  }
}
