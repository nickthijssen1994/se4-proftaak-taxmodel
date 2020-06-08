import {HttpClient, HttpHeaders} from '@angular/common/http';
import {Injectable} from '@angular/core';
import {Observable, of} from 'rxjs';
import {Appointment} from '../models/appointment';
import {environment} from '../../environments/environment';
import {AppointmentDto} from '../models/dtos/appointment-dto';
import {EditAppointmentDto} from "../models/dtos/edit-appointment-dto";

@Injectable({
  providedIn: 'root'
})
export class AppointmentTestService {

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

  getAppointments(): Observable<Appointment[]> {
    return this.http.get<Appointment[]>(this.appointmentsUrl);
  }

  getAppointment(id: number): Observable<Appointment> {
    const url = `${this.appointmentsUrl}/${id}`;
    return this.http.get<Appointment>(url);
  }

  updateAppointment(appointment: EditAppointmentDto): Observable<any> {
    const url = `${this.appointmentsUrl}/${appointment.id}`;
    return this.http.put(url, appointment, this.httpOptions);
  }

  addAppointment(appointment: AppointmentDto): Observable<any> {
    return this.http.post(this.appointmentsUrl, appointment, this.httpOptions);
  }

  deleteAppointment(appointment: Appointment | number): Observable<Appointment> {
    const id = typeof appointment === 'number' ? appointment : appointment.id;
    const url = `${this.appointmentsUrl}/${id}`;

    return this.http.delete<Appointment>(url, this.httpOptions);
  }
}
