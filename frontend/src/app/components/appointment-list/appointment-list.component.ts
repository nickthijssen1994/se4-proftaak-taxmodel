import {Component, OnInit} from '@angular/core';
import {Appointment} from '../../models/appointment';
import {AppointmentService} from '../../services/appointment.service';
import {DeleteAppointmentModalComponent} from '../delete-appointment-modal/delete-appointment-modal.component';
import {MatDialog} from '@angular/material/dialog';
import {HttpClient} from '@angular/common/http';
import {getId} from "../../services/user-storage";

@Component({
  selector: 'app-appointment-list',
  templateUrl: './appointment-list.component.html',
  styleUrls: ['./appointment-list.component.css'],
})

export class AppointmentListComponent implements OnInit {

  displayedColumns: string[] = ['id', 'title', 'location', 'description', 'delete'];
  upcomingDisplayedColumns: string[] = ['id', 'title', 'location', 'description'];
  appointments: Appointment[] = [];
  upcomingAppointments: Appointment[] = [];

  constructor(private appointmentTestService: AppointmentService, private http: HttpClient, public matDialog: MatDialog) {
  }

  ngOnInit(): void {
    this.getAppointments();
  }

  getAppointments(): void {
    this.appointmentTestService.getAppointmentsOrganizedByUser(getId()).subscribe(appointments => {
      this.appointments = appointments;
    });

    this.appointmentTestService.getUserUpcomingAppointments(getId()).subscribe(appointments => {
      console.log(appointments);
      this.upcomingAppointments = appointments;
    });
  }

  delete(appointment: Appointment): void {
    const dialogRef = this.matDialog.open(DeleteAppointmentModalComponent, {
      data: {
        appointmentId: appointment.id
      }
    });
  }
}
