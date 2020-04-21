import {Component, Input, OnInit} from '@angular/core';
import { Appointment } from '../../models/Appointment';
import { AppointmentTestService} from '../../services/appointment-test.service';
import {ActivatedRoute} from '@angular/router';
import {Location} from '@angular/common';
import {AccountComponent} from '../account/account.component';
import {log} from 'util';

@Component({
  selector: 'app-create-appointment',
  templateUrl: './create-appointment.component.html',
  styleUrls: ['./create-appointment.component.css']
})
export class CreateAppointmentComponent implements OnInit {
  appointment: Appointment;
  disabled = false;

  constructor(private route: ActivatedRoute, private appointmentTestService: AppointmentTestService,
              private location: Location) { }

  ngOnInit(): void {
  }

  onFormSubmit(): void {
    console.log(this.appointment.title);
     // this.appointmentTestService.addAppointment(this.appointment);
  }

  goBack(): void {
    this.location.back();
  }
}
