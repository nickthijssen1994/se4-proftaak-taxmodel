import {Component} from '@angular/core';
import {isLoggedIn, logout} from './storage/UserStorage';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
})

export class AppComponent {
  title = 'TaxBreak';
  isLoggedIn = isLoggedIn();

  constructor() {
  }

  logout() {
    logout();
    window.location.reload();
  }
}
