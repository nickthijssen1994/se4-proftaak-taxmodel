import {Component, Inject, OnInit} from '@angular/core';
import {AppointmentTestService} from '../../services/appointment-test.service';
import {MAT_DIALOG_DATA} from '@angular/material/dialog';

@Component({
  selector: 'app-delete-appointment-modal',
  templateUrl: './delete-appointment-modal.component.html',
  styleUrls: ['./delete-appointment-modal.component.css']
})
export class DeleteAppointmentModalComponent implements OnInit {
  appointmentId: number;

  constructor(private appointmentTestService: AppointmentTestService, @Inject(MAT_DIALOG_DATA) data) {
    this.appointmentId = data.appointmentId;
  }

  ngOnInit() {
  }

  deleteAppointment() {
    this.appointmentTestService.deleteAppointment(this.appointmentId).subscribe();
  }
}
