import {BrowserModule} from '@angular/platform-browser';
import {NgModule} from '@angular/core';
import {AppRoutingModule} from './app-routing.module';
import {HttpClientModule} from "@angular/common/http";
import {AppComponent} from './app.component';
import {UserListComponent} from './user/user-list/user-list.component';
import {UserService} from './user/user.service';
import {MovieListComponent} from './movie/movie-list/movie-list.component';
import {MovieService} from "./movie/movie.service";

@NgModule({
  declarations: [
    AppComponent,
    UserListComponent,
    MovieListComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
  ],
  providers: [UserService, MovieService],
  bootstrap: [AppComponent]
})
export class AppModule {
}
