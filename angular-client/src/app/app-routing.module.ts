import {NgModule} from '@angular/core';
import {Routes, RouterModule} from '@angular/router';
import {UserListComponent} from './user/user-list/user-list.component';
import {MovieListComponent} from "./movie/movie-list/movie-list.component";
import {ReviewListComponent} from "./review/review-list/review-list.component";
import {HomeComponent} from "./home/home.component";
import {LoginComponent} from "./login/login.component";
import {RegisterComponent} from "./register/register.component";
import {ProfileComponent} from "./profile/profile.component";
import {BoardUserComponent} from "./board-user/board-user.component";
import {BoardAdminComponent} from "./board-admin/board-admin.component";

const routes: Routes = [
  {path: 'users', component: UserListComponent},
  {path: 'movies', component: MovieListComponent},
  {path: 'movie/:id/reviews', component: ReviewListComponent},
  {path: 'home', component: HomeComponent},
  {path: 'login', component: LoginComponent},
  {path: 'register', component: RegisterComponent},
  {path: 'profile', component: ProfileComponent},
  {path: 'user', component: BoardUserComponent},
  {path: 'admin', component: BoardAdminComponent},
  {path: '', redirectTo: 'home', pathMatch: 'full'}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
