import {Component, OnInit} from '@angular/core';
import {Appointment} from '../../models/appointment';
import {AppointmentTestService} from '../../services/appointment-test.service';

@Component({
  selector: 'app-appointment-list',
  templateUrl: './appointment-list.component.html',
  styleUrls: ['./appointment-list.component.css']
})
export class AppointmentListComponent implements OnInit {

  displayedColumns: string[] = ['id', 'title', 'location', 'description', 'delete'];
  appointments: Appointment[] = [];

  constructor(private appointmentTestService: AppointmentTestService) {
  }

  ngOnInit(): void {
    this.getAppointments();
  }

  getAppointments(): void {
    this.appointmentTestService.getAppointments().subscribe(appointments => {
      this.appointments = appointments;
      console.log(this.appointments);
    });
  }

  delete(appointment: Appointment): void {
    this.appointments = this.appointments.filter(a => a !== appointment);
    this.appointmentTestService.deleteAppointment(appointment).subscribe();
  }

}
