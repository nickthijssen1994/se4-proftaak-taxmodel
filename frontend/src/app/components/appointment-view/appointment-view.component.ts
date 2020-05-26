import {Component, Inject, OnInit} from '@angular/core';
import { MAT_DIALOG_DATA, MatDialogRef} from '@angular/material/dialog';
import * as moment from 'moment';

@Component({
  selector: 'app-appointment-view',
  templateUrl: './appointment-view.component.html',
  styleUrls: ['./appointment-view.component.css']
})
export class AppointmentViewComponent implements OnInit {
  id: number;
  title: string;
  beginTime: string;
  endTime: string;

  constructor(
    @Inject(MAT_DIALOG_DATA) data) {

    this.beginTime = moment(data.startDate).format('MMMM Do YYYY, h:mm:ss a');
    this.endTime = moment(data.endDate).format('MMMM Do YYYY, h:mm:ss a');
    this.title = data.title;
    this.id = data.id;
  }

  ngOnInit(): void {
    console.log(this.beginTime);
  }
}
