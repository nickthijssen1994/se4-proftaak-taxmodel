import {Action} from '@ngrx/store';
import {User} from '../models/User';

export const LOGIN = '[Store] Login';
export const LOGOUT = '[Store] Logout';

export class Login implements Action {
  readonly type = LOGIN;
  constructor(public payload: User) {
  }
}

export class Logout implements Action {
  readonly type = LOGOUT;
}

export type All = Login | Logout;
