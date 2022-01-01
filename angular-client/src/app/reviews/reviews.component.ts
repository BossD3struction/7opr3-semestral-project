import {Component, OnInit} from '@angular/core';
import {Review} from "../models/review";
import {ReviewService} from "../_services/review.service";
import {ActivatedRoute} from "@angular/router";

@Component({
  selector: 'app-reviews',
  templateUrl: './reviews.component.html',
  styleUrls: ['./reviews.component.css']
})
export class ReviewsComponent implements OnInit {

  // @ts-ignore
  content: string;
  reviews: Review[] = [];

  id: any;

  constructor(private reviewService: ReviewService, private route: ActivatedRoute) {
  }

  ngOnInit(): void {
    this.id = this.route.snapshot.paramMap.get('id');
    this.reviewService.listMovieReviews(this.id).subscribe(
      data => {
        this.reviews = data;
      }, err => {
        this.content = JSON.parse(err.error).message;
      }
    );
  }

}
