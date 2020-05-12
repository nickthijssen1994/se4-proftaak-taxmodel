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
  public Appointments: Array<Appointment> = null;
  public test: Appointment = null;
  test2: CalendarEvent;
  title = 'Calendar';
  constructor(private http: HttpClient) {
  }
  ngOnInit() {
    this.getItems();
  }

getItems() {
   return this.http.get('https://localhost:5001/taxbreak/api/appointment').subscribe(data => {
   this.test = data as Appointment;
   console.log(this.test);
   const event = CalendarEvent.create({
     id: this.test.id,
     begin: this.test.beginDate.toString(),
     end: this.test.endDate.toString(),
     title: this.test.title.toString(),
   });
   console.log(event)
   setTimeout(() => {
        $('#calendar').fullCalendar({
          header: {
            left: 'prev,next',
            center: 'month,agendaWeek,agendaDay',
            right: 'title'
          },
          plugins: Interaction,
          eventClick(info) {
            alert('Datum = ' + new Date(info.start).toLocaleString() + ' - ' + new Date(info.end).toLocaleString());
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
        }).fullCalendar('addEventSource', event);
      }, 100);
    });
}
}
