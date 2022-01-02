import {NgModule} from '@angular/core';
import {Routes, RouterModule} from '@angular/router';
import {HomeComponent} from "./home/home.component";
import {LoginComponent} from "./login/login.component";
import {RegisterComponent} from "./register/register.component";
import {ProfileComponent} from "./profile/profile.component";
import {MoviesComponent} from "./movies/movies.component";
import {ReviewsComponent} from "./reviews/reviews.component";
import {ManagementComponent} from "./management/management.component";
import {AddReviewComponent} from "./add-review/add-review.component";

const routes: Routes = [
  {path: 'home', component: HomeComponent},
  {path: 'movies', component: MoviesComponent},
  {path: 'movie/:id/reviews', component: ReviewsComponent},
  {path: 'addReview', component: AddReviewComponent},
  {path: 'management', component: ManagementComponent},
  {path: 'login', component: LoginComponent},
  {path: 'register', component: RegisterComponent},
  {path: 'profile', component: ProfileComponent},
  {path: '', redirectTo: 'home', pathMatch: 'full'}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
