import {HttpClient, HttpHeaders} from '@angular/common/http';
import {Injectable} from '@angular/core';
import {Observable, of} from 'rxjs';
import {environment} from '../../environments/environment';
import {LoginDto} from '../models/LoginDto';
import {RegisterDto} from '../models/RegisterDto';

@Injectable({
  providedIn: 'root'
})
export class AccountService {

  private headers = new HttpHeaders();

  httpOptions = {
    headers: this.headers,
  };

  private accountUrl = environment.apiUrl + '/account';  // URL to web api

  constructor(private http: HttpClient) {
    this.headers = this.headers.set('Access-Control-Allow-Origin', '*');
    this.headers = this.headers.set('Content-Type', 'application/json');
    this.headers = this.headers.set('Accept', 'application/json');
  }

  login(account: LoginDto): Observable<Account> {
    return this.http.post<Account>(this.accountUrl + '/login', account);
  }

  register(account: RegisterDto): Observable<Account> {
    return this.http.post<Account>(this.accountUrl + '/register', account);
  }
}
