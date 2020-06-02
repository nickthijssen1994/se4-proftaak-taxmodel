import {Component} from '@angular/core';
import {getName, isLoggedIn, logout} from './storage/UserStorage';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
})

export class AppComponent {
  title = 'TaxBreak';
  isLoggedIn = isLoggedIn();
  username = getName();

  constructor() {
  }

  logout() {
    logout();
    window.location.reload();
  }
}
