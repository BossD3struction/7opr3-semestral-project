import {Component, OnInit} from '@angular/core';
import {TokenStorageService} from "../_services/token-storage.service";

@Component({
  selector: 'app-management',
  templateUrl: './management.component.html',
  styleUrls: ['./management.component.css']
})
export class ManagementComponent implements OnInit {

  currentUser: any;

  constructor(private token: TokenStorageService) {
  }

  ngOnInit(): void {
    this.currentUser = this.token.getUser();
  }

}
