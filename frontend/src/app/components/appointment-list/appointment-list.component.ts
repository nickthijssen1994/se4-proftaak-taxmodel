import {Component, OnInit} from '@angular/core';
import {Appointment} from '../../models/appointment';
import {AppointmentTestService} from '../../services/appointment-test.service';
import {DeleteAppointmentModalComponent} from '../delete-appointment-modal/delete-appointment-modal.component';
import {MatDialog} from '@angular/material/dialog';
import {HttpClient} from '@angular/common/http';

@Component({
  selector: 'app-appointment-list',
  templateUrl: './appointment-list.component.html',
  styleUrls: ['./appointment-list.component.css'],
})

export class AppointmentListComponent implements OnInit {

  displayedColumns: string[] = ['id', 'title', 'location', 'description', 'delete'];
  appointments: Appointment[] = [];

  constructor(private appointmentTestService: AppointmentTestService, private http: HttpClient, public matDialog: MatDialog) {
  }

  ngOnInit(): void {
    this.getAppointments();
  }

  getAppointments(): void {
    this.appointmentTestService.getAppointments().subscribe(appointments => {
      this.appointments = appointments;
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
