import {Component, OnInit} from '@angular/core';
import {TokenStorageService} from "./_services/token-storage.service";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {

  // @ts-ignore
  username: string;
  // @ts-ignore
  private roles: string[];
  isLoggedIn = false;
  showAdminBoard = false;

  constructor(private tokenStorageService: TokenStorageService) {
  }

  // @ts-ignore
  ngOnInit(): void {
    this.isLoggedIn = !!this.tokenStorageService.getToken();

    if (this.isLoggedIn) {
      const user = this.tokenStorageService.getUser();
      this.roles = user.roles;
      this.username = user.username;
      this.showAdminBoard = this.roles.includes('ROLE_ADMIN');
    }
  }

  // @ts-ignore
  logout(): void {
    this.tokenStorageService.signOut();
    window.location.reload();
  }
}
