import {Component} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {getName, isLoggedIn, logout} from './storage/UserStorage';

declare var $: any;

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
})

export class AppComponent {

  constructor(private http: HttpClient) {
  }

  title = 'TaxBreak';
  isLoggedIn = isLoggedIn();
  username = getName();

  logout() {
    logout();
    window.location.reload();
  }
}

