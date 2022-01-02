import {BrowserModule} from '@angular/platform-browser';
import {NgModule} from '@angular/core';
import {AppRoutingModule} from './app-routing.module';
import {HttpClientModule} from "@angular/common/http";
import {AppComponent} from './app.component';
import {LoginComponent} from "./login/login.component";
import {RegisterComponent} from "./register/register.component";
import {HomeComponent} from "./home/home.component";
import {ProfileComponent} from "./profile/profile.component";
import {FormsModule, ReactiveFormsModule} from "@angular/forms";
import {MoviesComponent} from './movies/movies.component';
import {MovieService} from "./_services/movie.service";
import {ReviewsComponent} from './reviews/reviews.component';
import {ReviewService} from "./_services/review.service";
import {UserService} from "./_services/user.service";
import {authInterceptorProviders} from "./_helpers/auth.interceptor";
import {ManagementComponent} from './management/management.component';
import {AddReviewComponent} from './add-review/add-review.component';

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    RegisterComponent,
    HomeComponent,
    ProfileComponent,
    MoviesComponent,
    ReviewsComponent,
    ManagementComponent,
    AddReviewComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    ReactiveFormsModule,
    FormsModule,
    HttpClientModule,
  ],
  providers: [UserService, MovieService, ReviewService, authInterceptorProviders],
  bootstrap: [AppComponent]
})
export class AppModule {
}
