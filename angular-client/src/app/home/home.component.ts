import {Component, OnInit} from '@angular/core';
import {UserService} from "../_services/user.service";
import {User} from "../models/user";
import {TokenStorageService} from "../_services/token-storage.service";

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  // @ts-ignore
  content: string;
  currentUser: any;

  users: User[] = [];

  constructor(private userService: UserService, private token: TokenStorageService) {
  }

  ngOnInit(): void {
    this.currentUser = this.token.getUser();
    this.userService.listUsers().subscribe(
      data => {
        this.users = data;
      }, err => {
        this.content = JSON.parse(err.error).message;
      }
    );
  }

}
