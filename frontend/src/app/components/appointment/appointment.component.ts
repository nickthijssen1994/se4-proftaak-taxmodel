import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-appointment',
  templateUrl: './appointment.component.html',
  styleUrls: ['./appointment.component.css']
})
export class AppointmentComponent implements OnInit {

  beginDate: Date;
  endDate: Date;
  description: string;
  location: string;
  organiser: Account;
  title: string;
  type: boolean;
  size: number;

  constructor() {
    this.title = 'test title';
  }

  ngOnInit(): void {
  }

}
