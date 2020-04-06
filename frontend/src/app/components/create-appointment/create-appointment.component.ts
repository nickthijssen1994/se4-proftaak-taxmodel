import {Component, Input, OnInit} from '@angular/core';
import { Appointment } from '../../models/Appointment';
import { AppointmentTestService} from '../../services/appointment-test.service';

@Component({
  selector: 'app-create-appointment',
  templateUrl: './create-appointment.component.html',
  styleUrls: ['./create-appointment.component.css']
})
export class CreateAppointmentComponent implements OnInit {
  @Input() appointment: Appointment;

  constructor(private appointmentTestService: AppointmentTestService) { }

  ngOnInit(): void {
    console.log(this.appointmentTestService.getAppointments());
  }

  add(appointment: Appointment): void {
    if (!appointment) {return; }
    this.appointmentTestService.addAppointment(appointment).subscribe();
  }
}
