import {Component, OnInit} from '@angular/core';
import {AccountService} from '../../services/account.service';
import {RegisterDto} from '../../models/dtos/register-dto';
import {Router} from '@angular/router';
import {login} from '../../storage/user-storage';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent implements OnInit {

  form: any = {};

  account: RegisterDto = {
    name: null,
    password: null,
    email: null,
  };

  isSuccessful = false;
  isSignUpFailed = false;
  errorMessage = '';

  constructor(private accountService: AccountService, private router: Router) {
  }

  ngOnInit(): void {
  }

  onSubmit() {
    this.accountService.register(this.account).subscribe((response: any) => {
      console.log(response);
      this.isSuccessful = true;
      this.isSignUpFailed = false;
      this.accountService.getByName(this.account.name).subscribe(a => {
        login(a.id, this.account.name, response.token);
        window.location.reload();
      });
    }, err => {
      this.errorMessage = err.error.message;
      this.isSignUpFailed = true;
    });
  }
}
