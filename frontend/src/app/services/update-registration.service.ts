import {HttpClient, HttpHeaders} from '@angular/common/http';
import {Injectable} from '@angular/core';
import {Observable} from 'rxjs';
import {environment} from '../../environments/environment';
import {UpdateRegistrationDto} from '../models/dtos/update-registration-dto';

@Injectable({
  providedIn: 'root'
})
export class UpdateRegistrationService {

  private headers = new HttpHeaders();

  httpOptions = {
    headers: this.headers,
  };

  private appointmentsUrl = environment.apiUrl + '/appointment';  // URL to web api

  constructor(private http: HttpClient) {
    this.headers = this.headers.set('Access-Control-Allow-Origin', '*');
    this.headers = this.headers.set('Content-Type', 'application/json');
    this.headers = this.headers.set('Accept', 'application/json');
  }

  checkIfAlreadyRegistered(accountId, appointmentId): Observable<any> {
    const url = `${this.appointmentsUrl}/isRegisteredForAppointment/${accountId}/${appointmentId}`;
    console.log(url);
    return this.http.get<boolean>(url);
  }

  subscribe(updateRegistrationDto: UpdateRegistrationDto): Observable<any> {
    const url = `${this.appointmentsUrl}/register/`
    return this.http.post(url, updateRegistrationDto, this.httpOptions);
  }

  unsubscribe(updateRegistrationDto: UpdateRegistrationDto): Observable<any> {
    const url = `${this.appointmentsUrl}/unsubscribe/`;
    const header: HttpHeaders = new HttpHeaders()
      .append('Content-Type', 'application/json; charset=UTF-8');
    const httpOptions = {
      headers: this.headers,
      body: { updateRegistrationDto: UpdateRegistrationDto }
    };

    return this.http.post(url, updateRegistrationDto, httpOptions);

  }
}
