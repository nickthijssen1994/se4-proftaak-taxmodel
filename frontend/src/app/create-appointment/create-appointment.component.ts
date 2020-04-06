import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-create-appointment',
  templateUrl: './create-appointment.component.html',
  styleUrls: ['./create-appointment.component.css']
})
export class CreateAppointmentComponent implements OnInit {

  beginDate: Date;
  endDate: Date;
  description: string;
  location: string;
  organiser: Account;
  title: string;
  type: boolean;
  size: number;

  constructor() { }

  ngOnInit(): void {
  }

}
