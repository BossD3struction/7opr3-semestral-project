import {NgModule} from '@angular/core';
import {Routes, RouterModule} from '@angular/router';
import {UserListComponent} from './user/user-list/user-list.component';
import {MovieListComponent} from "./movie/movie-list/movie-list.component";
import {ReviewListComponent} from "./review/review-list/review-list.component";

const routes: Routes = [
  {path: 'users', component: UserListComponent},
  {path: 'movies', component: MovieListComponent},
  {path: 'movie/:id/reviews', component: ReviewListComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
