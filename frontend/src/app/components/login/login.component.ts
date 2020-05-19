import { Component, OnInit } from '@angular/core';
import {LoginDto} from '../../models/LoginDto';
import {AppointmentTestService} from "../../services/appointment-test.service";


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  account: LoginDto = {
    email: null,
    password: null
};

  constructor() { }

  ngOnInit(): void {
  }

  login(): void {

  }

}
