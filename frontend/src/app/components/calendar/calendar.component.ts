import { Component, OnInit } from '@angular/core';
import { Interaction} from '@fullcalendar/core';
import {HttpClient} from '@angular/common/http';
import {Appointment} from '../../models/Appointment';
import {CalendarEvent} from '../../models/CalendarEvent';

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
  constructor(private http: HttpClient) {
  }
  ngOnInit() {
    this.getItems();
  }

  getItems() {
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
            alert('ID = ' + info.id + ' - Datum = ' + new Date(info.start).toUTCString() + ' - ' + new Date(info.end).toUTCString());
          },
          navLinks: true,
          editable: true,
          eventLimit: true,
          hiddenDays: [0, 6],
          startTime: '10:00',
          endTime: '15:00',
          events: [
            {
            }
          ]
        }).fullCalendar('addEventSource', this.Events);
      }, 100);
    });
  }
}
