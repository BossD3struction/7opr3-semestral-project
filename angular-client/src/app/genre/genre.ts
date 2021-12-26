import {Movie} from "../movie/movie";

export class Genre {
  id: number | undefined;
  name: string | undefined;
  movies: Movie[] | undefined
}
