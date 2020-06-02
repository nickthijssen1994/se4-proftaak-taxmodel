import {Component, Inject, OnInit} from '@angular/core';
import { MAT_DIALOG_DATA, MatDialogRef} from '@angular/material/dialog';
import * as moment from 'moment';
import {HttpClient} from '@angular/common/http';
import {Appointment} from '../../models/Appointment';

@Component({
  selector: 'app-appointment-view',
  templateUrl: './appointment-view.component.html',
  styleUrls: ['./appointment-view.component.css']
})
export class AppointmentViewComponent implements OnInit {
  id: number;
  title: string;
  beginTime: string;
  endTime: string;
  location: string;
  description: string;
  maxPeople: number;
  appointment: Appointment;

  constructor(private http: HttpClient,
              @Inject(MAT_DIALOG_DATA) data) {

    this.beginTime = moment(data.startDate).format('MMMM Do YYYY, h:mm:ss a');
    this.endTime = moment(data.endDate).format('MMMM Do YYYY, h:mm:ss a');
    this.title = data.title;
    this.id = data.id;
  }

  ngOnInit() {
    return this.http.get('https://localhost:5001/taxbreak/api/appointment/' + this.id).subscribe(data => {
      this.appointment = data as Appointment;
      this.location = this.appointment.location;
      this.description = this.appointment.description;
      this.maxPeople = this.appointment.maxPeople;
    });
  }
}
