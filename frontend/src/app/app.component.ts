import {Component} from '@angular/core';

import {Store} from '@ngrx/store';
import {Observable} from 'rxjs';

import {User} from './models/User';
import * as UserActions from './store/user.actions';

interface AppState {
  user: User;
}

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'TaxBreak';

  user: Observable<User>;

  constructor(private store: Store<AppState>) {
    this.user = this.store.select('user');
  }

  login(user) {
    this.store.dispatch(new UserActions.Login(user));
  }

  logout() {
    this.store.dispatch(new UserActions.Logout());
  }
}
