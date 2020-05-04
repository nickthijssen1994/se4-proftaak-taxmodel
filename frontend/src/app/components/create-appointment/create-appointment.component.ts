import {Component, OnInit} from '@angular/core';
import {Appointment} from '../../models/Appointment';
import {AppointmentTestService} from '../../services/appointment-test.service';
import {ActivatedRoute} from '@angular/router';
import {Location} from '@angular/common';
import {MatSnackBar} from '@angular/material/snack-bar';

@Component({
  selector: 'app-create-appointment',
  templateUrl: './create-appointment.component.html',
  styleUrls: ['./create-appointment.component.css']
})
export class CreateAppointmentComponent implements OnInit {
  appointment: Appointment = {
    id: null,
    title: '',
    description: '',
    location: '',
    type: null,
    minSize: null,
    maxSize: null,
    beginDate: new Date(),
    endDate: null,
    organiser: null
  };
  disabled = false;
  constructor(private route: ActivatedRoute, private appointmentTestService: AppointmentTestService,
              private location: Location, private notificationService: MatSnackBar) {
  }

  ngOnInit(): void {
  }

  onFormSubmit(): void {
    if (this.validate()) {
      console.log(this.appointment);
      this.appointmentTestService.addAppointment(this.appointment).subscribe();
     }
  }

  goBack(): void {
    this.location.back();
  }

  validate(): boolean {
     if (this.appointment.title === '') {
       this.notificationService.open('titel niet ingevuld');
       return false;
    }
     return true;
  }
}
