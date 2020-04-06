import {Component, OnInit} from '@angular/core';
import {Appointment} from '../../models/Appointment';
import {AppointmentTestService} from '../../services/appointment-test.service';

@Component({
  selector: 'app-appointment-list',
  templateUrl: './appointment-list.component.html',
  styleUrls: ['./appointment-list.component.css']
})
export class AppointmentListComponent implements OnInit {

  appointments: Appointment[];

  constructor(private appointmentTestService: AppointmentTestService) {
  }

  ngOnInit(): void {
    this.getAppointments();
  }

  getAppointments(): void {
    this.appointmentTestService.getAppointments().subscribe(appointments => this.appointments = appointments);
    console.log(this.appointments);
  }

  add(title: string): void {
    title = title.trim();
    if (!title) {
      return;
    }
    this.appointmentTestService.addAppointment({title} as Appointment)
      .subscribe(appointment => {
        this.appointments.push(appointment);
      });
  }

  delete(appointment: Appointment): void {
    this.appointments = this.appointments.filter(a => a !== appointment);
    this.appointmentTestService.deleteAppointment(appointment).subscribe();
  }

}
