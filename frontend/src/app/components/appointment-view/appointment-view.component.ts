import {Component, Inject, OnInit} from '@angular/core';
import { MAT_DIALOG_DATA, MatDialogRef} from '@angular/material/dialog';
import * as moment from 'moment';
import {HttpClient} from '@angular/common/http';
import {Appointment} from '../../models/Appointment';
import {UpdateRegistrationService} from '../../services/update-registration.service';
import {UpdateRegistrationDto} from '../../models/updateRegistrationDto';
import {getId} from '../../storage/UserStorage';

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
  peopleCount: number;
  maxPeople: number;
  canRegister: boolean;
  appointment: Appointment;


  constructor(private http: HttpClient, private updateRegistrationService: UpdateRegistrationService,
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
      this.peopleCount = this.appointment.peopleCount;
      if (this.appointment.peopleCount < this.appointment.maxPeople) {
        this.canRegister = true;
      }
      if (this.canRegister) {
        this.updateRegistrationService.checkIfAlreadyRegistered(getId(), this.id).subscribe(b => this.canRegister = b);
      }
    });
  }

  subscribe() {
    const dto = new UpdateRegistrationDto();
    dto.appointmentId = this.id;
    dto.accountId = getId();
    if (this.canRegister) {
      this.updateRegistrationService.subscribe(dto).subscribe();
    }
  }

  unsubscribe() {
    const dto = new UpdateRegistrationDto();
    dto.appointmentId = this.id;
    dto.accountId = getId();
    this.updateRegistrationService.unsubscribe(dto).subscribe();
  }
}
