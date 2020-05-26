import {Component, Input, OnInit} from '@angular/core';
import {AccountService} from '../../services/account.service';
import {RegisterDto} from '../../models/RegisterDto';
import {login, getName, getToken} from '../../storage/UserStorage';
import {Router} from '@angular/router';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent implements OnInit {
  account: RegisterDto = {

    name: null,
    password: null,
    email: null,
  };

  constructor(private accountService: AccountService, private router: Router) {
  }

  ngOnInit(): void {
  }

  register(account: RegisterDto) {
    this.accountService.register(account);
  }
}
