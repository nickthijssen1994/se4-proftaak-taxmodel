import { Component, OnInit } from '@angular/core';
import { Interaction} from '@fullcalendar/core';
import {HttpClient} from '@angular/common/http';
import {Appointment} from '../../models/Appointment';
import {CalendarEvent} from '../../models/CalendarEvent';
import {MatDialog, MatDialogConfig} from '@angular/material/dialog';
import {AppointmentViewComponent} from '../appointment-view/appointment-view.component';
import {element} from 'protractor';

declare var $: any;
@Component({
  selector: 'app-calendar',
  templateUrl: './calendar.component.html',
  styleUrls: ['./calendar.component.css']
})
export class CalendarComponent implements OnInit {
  public Appointments: Array<Appointment> = [];
  public test: Appointment = null;
  x: any;
  public Events: Array<CalendarEvent> = [];
  title = 'Calendar';

  constructor(private http: HttpClient, public matDialog: MatDialog) {
  }

  ngOnInit() {
    this.getItems(this.matDialog);
  }

  openDialog() {
  }

  getItems(matDialog1: MatDialog) {
    const Dialog = matDialog1;
    return this.http.get('https://localhost:5001/taxbreak/api/appointment').subscribe(data => {
      this.Appointments = data as Appointment[];
      this.Appointments.forEach((elements) => {
        const events = new CalendarEvent(elements.id, elements.title, elements.beginTime, elements.endTime);
        this.Events.push(events);
      });
      setTimeout(() => {
        $('#calendar').fullCalendar({
          header: {
            left: 'prev,next',
            center: 'month,agendaWeek,agendaDay',
            right: 'title'
          },
          plugins: Interaction,
          eventClick(info) {
            const dialogRef = Dialog.open(AppointmentViewComponent, {
              width: '600px',
              height: '500px',
              data: {
                startDate: info.start,
                endDate: info.end,
                title: info.title,
                id: info.id,
              }
            });
          },
          navLinks: true,
          editable: true,
          eventLimit: true,
          hiddenDays: [0, 6],
          startTime: '10:00',
          endTime: '15:00',
          events: [
            {}
          ]
        }).fullCalendar('addEventSource', this.Events);
      }, 100);
    });
  }
}