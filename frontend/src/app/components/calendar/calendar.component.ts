import {Component, OnInit} from '@angular/core';
import {Interaction} from '@fullcalendar/core';
import {HttpClient} from '@angular/common/http';
import {Appointment} from '../../models/appointment';
import {CalendarEvent} from '../../models/calendar-event';
import {MatDialog} from '@angular/material/dialog';
import {AppointmentViewComponent} from '../appointment-view/appointment-view.component';
import {environment} from '../../../environments/environment';

declare var $: any;

@Component({
    selector: 'app-calendar', templateUrl: './calendar.component.html', styleUrls: ['./calendar.component.css']
})
export class CalendarComponent implements OnInit {
    public Appointments: Array<Appointment> = [];
    x: any;
    public Events: Array<CalendarEvent> = [];
    title = 'Calendar';

    constructor(private http: HttpClient, public matDialog: MatDialog) {
    }

    ngOnInit() {
        this.getItems(this.matDialog);
    }

    getItems(matDialog1: MatDialog) {
        const Dialog = matDialog1;
        return this.http.get(environment.apiUrl + '/appointment').subscribe(data => {
            this.Appointments = data as Appointment[];
            this.Appointments.forEach((elements) => {
                const events = new CalendarEvent(elements.id, elements.title, elements.beginTime, elements.endTime);
                this.Events.push(events);
            });
            setTimeout(() => {
                $('#calendar').fullCalendar({
                    header: {
                        left: 'prev,next', center: 'month,agendaWeek,agendaDay', right: 'title'
                    },
                    plugins: Interaction,
                    eventClick(info) {
                        const dialogRef = Dialog.open(AppointmentViewComponent, {
                            data: {
                                startDate: info.start, endDate: info.end, title: info.title, id: info.id,
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
