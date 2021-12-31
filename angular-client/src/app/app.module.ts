import {BrowserModule} from '@angular/platform-browser';
import {NgModule} from '@angular/core';
import {AppRoutingModule} from './app-routing.module';
import {HttpClientModule} from "@angular/common/http";
import {AppComponent} from './app.component';
import {UserListComponent} from './user/user-list/user-list.component';
import {UserService} from './user/user.service';
import {MovieListComponent} from './movie/movie-list/movie-list.component';
import {MovieService} from "./movie/movie.service";
import {ReviewListComponent} from './review/review-list/review-list.component';
import {ReviewService} from "./review/review.service";
import {JwtClientService} from "./jwt-client/jwt-client.service";
import {LoginComponent} from "./login/login.component";
import {RegisterComponent} from "./register/register.component";
import {HomeComponent} from "./home/home.component";
import {ProfileComponent} from "./profile/profile.component";
import {BoardAdminComponent} from "./board-admin/board-admin.component";
import {BoardUserComponent} from "./board-user/board-user.component";
import {FormsModule} from "@angular/forms";
import {authInterceptorProviders} from "./_helpers/auth.interceptor";

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    RegisterComponent,
    HomeComponent,
    ProfileComponent,
    BoardAdminComponent,
    BoardUserComponent,
    UserListComponent,
    MovieListComponent,
    ReviewListComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule,
  ],
  providers: [UserService, MovieService, ReviewService, JwtClientService, authInterceptorProviders],
  bootstrap: [AppComponent]
})
export class AppModule {
}
