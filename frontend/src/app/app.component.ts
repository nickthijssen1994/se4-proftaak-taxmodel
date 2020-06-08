import {Component} from '@angular/core';
import {getName, isLoggedIn, logout} from './storage/user-storage';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
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

