import {Component, OnInit} from '@angular/core';
import {LoginDto} from '../../models/dtos/login-dto';
import {AccountService} from '../../services/account.service';
import {Router} from '@angular/router';
import {login} from '../../storage/user-storage';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  form: any = {};

  account: LoginDto = {
    name: null,
    password: null
  };

  isSuccessful = false;
  isSigninFailed = false;
  errorMessage = '';

  constructor(private accountService: AccountService, private router: Router) {
  }

  ngOnInit(): void {
  }

  onSubmit() {
    this.accountService.login(this.account).subscribe((response: any) => {
      console.log(response);
      this.isSuccessful = true;
      this.isSigninFailed = false;
      login(this.account.name, response.token);
      window.location.reload();
      this.router.navigate(['dashboard']);
    }, err => {
      this.errorMessage = err.error.message;
      this.isSigninFailed = true;
    });
  }
}
