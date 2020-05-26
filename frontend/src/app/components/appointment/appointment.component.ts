import {Component, Input, OnInit} from '@angular/core';
import {Appointment} from '../../models/Appointment';
import {ActivatedRoute} from '@angular/router';
import {AppointmentTestService} from '../../services/appointment-test.service';
import {Location} from '@angular/common';

@Component({
  selector: 'app-appointment',
  templateUrl: './appointment.component.html',
  styleUrls: ['./appointment.component.css']
})
export class AppointmentComponent implements OnInit {

  @Input() appointment: Appointment;

  constructor(private route: ActivatedRoute, private appointmentTestService: AppointmentTestService, private location: Location) {
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
