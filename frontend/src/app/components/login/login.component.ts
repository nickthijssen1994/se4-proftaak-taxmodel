import {Component, OnInit} from '@angular/core';
import {LoginDto} from '../../models/LoginDto';
import {AccountService} from '../../services/account.service';
import {Router} from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  account: LoginDto = {
    name: '',
    password: ''
  };

  constructor(private accountService: AccountService, private router: Router) {
  }

  ngOnInit(): void {
  }

  login(account: LoginDto): void {
    this.accountService.login(account);
  }
}
