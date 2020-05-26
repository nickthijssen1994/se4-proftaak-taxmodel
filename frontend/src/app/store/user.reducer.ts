import * as UserActions from '../store/user.actions';
import {User} from '../models/User';
import SecureLS from 'secure-ls';
import { from } from 'rxjs';

const ls = new SecureLS({encodingType: 'aes', isCompression: false});

export type Action = UserActions.All; // Define type to correspond to user.actions.

// Default state
const defaultState: User = {
  isLoggedIn: false,
  name: null,
  token: null
};

// Helper function to create new state.
const login = (state, newData) => {
  return Object.assign({}, state, newData);
};

// Reducer function.
export function userReducer(state: User = defaultState, action: Action) {
  switch (action.type) {
    case UserActions.LOGIN:
      ls.set('isLoggedIn', true);
      ls.set('token', action.payload.token);
      ls.set('name', action.payload.name);
      break;
    case UserActions.LOGOUT:
      ls.clear();
      break;
    default:
      return state;
  }
}
