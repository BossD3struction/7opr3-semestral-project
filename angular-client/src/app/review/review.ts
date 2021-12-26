import {User} from "../user/user";
import {Movie} from "../movie/movie";

export interface Review {
  id: number;
  user: User[]
  movie: Movie[]
  text: string
}
