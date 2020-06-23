import {Component, Input, OnInit} from '@angular/core';
import {Appointment} from '../../models/appointment';
import {ActivatedRoute} from '@angular/router';
import {AppointmentService} from '../../services/appointment.service';
import {Location} from '@angular/common';

@Component({
  selector: 'app-appointment',
  templateUrl: './appointment.component.html',
  styleUrls: ['./appointment.component.css']
})
export class AppointmentComponent implements OnInit {

  @Input() appointment: Appointment;

  constructor(private route: ActivatedRoute, private appointmentTestService: AppointmentService, private location: Location) {
  }

  ngOnInit(): void {
    this.getAppointment();
  }

  getAppointment(): void {
    const id = +this.route.snapshot.paramMap.get('id');
    this.appointmentTestService.getAppointment(id)
      .subscribe(appointment => this.appointment = appointment);
  }

  update(): void {
    // this.appointmentTestService.updateAppointment(this.appointment).subscribe(() => this.goBack());
  }

  goBack(): void {
    this.location.back();
  }

}
