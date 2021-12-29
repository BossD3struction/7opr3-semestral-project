import {Component, OnInit} from '@angular/core';
import {Review} from "../review";
import {ReviewService} from "../review.service";
import {ActivatedRoute} from "@angular/router";
import {JwtClientService} from "../../jwt-client.service";

@Component({
  selector: 'app-review-list',
  templateUrl: './review-list.component.html',
  styleUrls: ['./review-list.component.css']
})
export class ReviewListComponent implements OnInit {

  authRequest: any = {
    "nickName": "GreenGoblin75",
    "password": "heslo"
  }

  reviews: Review[] = [];

  id: any;

  constructor(private reviewService: ReviewService, private jwtClientService: JwtClientService, private route: ActivatedRoute) {
  }

  ngOnInit() {
    this.id = this.route.snapshot.paramMap.get('id');
    this.getAccessToken(this.authRequest);
  }

  // @ts-ignore
  public getAccessToken(authRequest) {
    let resp = this.jwtClientService.generateToken(authRequest)
    resp.subscribe(data => this.accessApi(data));
  }

  // @ts-ignore
  public accessApi(token) {
    let resp = this.reviewService.listMovieReviews(this.id, token)
    resp.subscribe(data => this.reviews = data);
  }

}
