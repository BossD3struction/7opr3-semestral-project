import {Genre} from "../genre/genre";

export interface Movie {
  id: number;
  name: string;
  year: number;
  runningTime: number;
  bannerLink: string;
  about: string;
  genres: Genre[];
}
