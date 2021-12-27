import {Component, OnInit} from '@angular/core';
import {Review} from "../review";
import {ReviewService} from "../review.service";
import {ActivatedRoute} from "@angular/router";

@Component({
  selector: 'app-review-list',
  templateUrl: './review-list.component.html',
  styleUrls: ['./review-list.component.css']
})
export class ReviewListComponent implements OnInit {

  reviews: Review[] = [];

  constructor(private reviewService: ReviewService, private route: ActivatedRoute) {
  }

  ngOnInit() {
    const id = this.route.snapshot.paramMap.get('id');
    this.reviewService.findAll(id).subscribe(data => {
      this.reviews = data;
    });
  }

}
