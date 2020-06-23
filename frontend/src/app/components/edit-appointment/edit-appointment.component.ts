import {Component, Input, OnInit} from '@angular/core';
import {Appointment} from '../../models/appointment';
import {AppointmentService} from '../../services/appointment.service';
import {ActivatedRoute} from '@angular/router';
import {Location} from '@angular/common';
import {EditAppointmentDto} from '../../models/dtos/edit-appointment-dto';

@Component({
  selector: 'app-edit-appointment',
  templateUrl: './edit-appointment.component.html',
  styleUrls: ['./edit-appointment.component.css']
})
export class EditAppointmentComponent implements OnInit {
  @Input() appointment: Appointment;
  selectedDate: Date;
  beginTime: any;
  endTime: any;

  constructor(private route: ActivatedRoute, private appointmentTestService: AppointmentService,
              private location: Location) { }

  ngOnInit(): void {
    this.getAppointment();
  }

  getAppointment(): void {
    const id = +this.route.snapshot.paramMap.get('id');
    this.appointmentTestService.getAppointment(id)
      .subscribe(appointment => this.insertInfo(appointment));
  }

  insertInfo(appointment: Appointment): void {
    this.appointment = appointment;
    this.beginTime = appointment.beginTime;
    this.endTime = appointment.endTime;
    this.selectedDate = appointment.beginTime;

    this.beginTime = new Date(appointment.beginTime).getHours() + ':' + new Date(appointment.beginTime).getMinutes();
    this.endTime = new Date(appointment.endTime).getHours() + ':' + new Date(appointment.endTime).getMinutes();
  }

  update(): void {
    const dto = new EditAppointmentDto();

    dto.id = this.appointment.id;
    dto.title = this.appointment.title;
    dto.type = this.appointment.type;
    dto.beginTime = this.createDate(new Date(this.selectedDate), this.beginTime).toISOString();
    dto.endTime = this.createDate(new Date(this.selectedDate), this.endTime).toISOString();
    dto.description = this.appointment.description;
    dto.location = this.appointment.location;
    dto.maxPeople  = this.appointment.maxPeople;
    dto.minPeople  = this.appointment.minPeople;
    dto.organiser = this.appointment.organiser;


    console.log(dto);
    this.appointmentTestService.updateAppointment(dto).subscribe(() => this.goBack());
  }

  addTimeToDate() {
    this.appointment.beginTime = this.createDate(new Date(this.selectedDate), this.beginTime);
    this.appointment.endTime = this.createDate(new Date(this.selectedDate), this.endTime);
  }

  createDate( date: Date, time: Date): Date {
    let result = new Date(this.selectedDate);
    const dateArray =  time.toString().split(':');

    result.setHours(Number(dateArray[0]) + 2 );
    result.setMinutes(Number(dateArray[1]));

    result = new Date(result);
    return result;
  }

  onTypeChange($event): void {
    this.appointment.type = $event.value;
  }

  onDateChange($event): void {
    console.log($event.value);
    this.selectedDate = $event.value;
  }

  goBack(): void {
    this.location.back();
  }
}
