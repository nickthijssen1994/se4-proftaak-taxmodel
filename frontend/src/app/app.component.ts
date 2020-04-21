import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Interaction} from '@fullcalendar/core';


declare var $: any;
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  title = 'Lunch Calendar';
  posts: any;
  constructor(private http: HttpClient) { }

  ngOnInit() {
    this.getItems();
  }

  getItems() {
    // return this.http.get().subscribe(data => {
   //  this.posts = data
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
          events: [{
            title: 'Lunch',
            start: '04-21-2020 13:00',
            end: '04-21-2020 14:00'
          }]
        });
      }, 100);
    }
}

