import {Component, Input, OnInit} from '@angular/core';
import { Appointment } from '../../models/Appointment';
import { AppointmentTestService} from '../../services/appointment-test.service';
import {ActivatedRoute} from '@angular/router';
import {Location} from '@angular/common';

@Component({
  selector: 'app-create-appointment',
  templateUrl: './create-appointment.component.html',
  styleUrls: ['./create-appointment.component.css']
})
export class CreateAppointmentComponent implements OnInit {
  @Input() appointment: Appointment;

  constructor(private route: ActivatedRoute, private appointmentTestService: AppointmentTestService,
              private location: Location) { }

  ngOnInit(): void {
    this.getAppointment();
  }

  getAppointment(): void {
    const id = +this.route.snapshot.paramMap.get('id');
    this.appointmentTestService.getAppointment(id)
      .subscribe(appointment => this.appointment = appointment);
  }

  update(appointment: Appointment): void {
    this.appointmentTestService.updateAppointment(this.appointment).subscribe(() => this.goBack());
  }

  add(appointment: Appointment): void {
    if (!appointment) {return; }
    this.appointmentTestService.addAppointment(appointment).subscribe();
  }

  goBack(): void {
    this.location.back();
  }
}
