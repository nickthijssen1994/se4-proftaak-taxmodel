import {Component, OnInit} from '@angular/core';
import {AppointmentService} from '../../services/appointment.service';
import {ActivatedRoute, Router} from '@angular/router';
import {Location} from '@angular/common';
import {MatSnackBar} from '@angular/material/snack-bar';
import {AppointmentDto} from '../../models/dtos/appointment-dto';
import {getId} from '../../services/user-storage';

@Component({
  selector: 'app-create-appointment',
  templateUrl: './create-appointment.component.html',
  styleUrls: ['./create-appointment.component.css']
})
export class CreateAppointmentComponent implements OnInit {
  appointment: AppointmentDto = {
    title: '',
    description: '',
    location: '',
    type: 'true',
    minPeople: null,
    maxPeople: null,
    beginDate: null,
    endDate: null,
    organiser: null,
    beginTime: '',
    endTime: '',
  };

  date: Date;
  disabled = false;
  constructor(private router: Router, private route: ActivatedRoute, private appointmentTestService: AppointmentService,
              private location: Location, private notificationService: MatSnackBar) {
  }

  ngOnInit(): void {
  }

  onFormSubmit(): void {
    if (this.validate()) {
      this.addTimeToDate();
      this.appointment.organiser = getId();
      this.appointmentTestService.addAppointment(this.appointment).subscribe();
      this.notificationService.open('Appointment created', null, {
        duration: 5000,
      });
    }
  }

  goBack(): void {
    this.location.back();
  }

  onChangeDate($event): void {
    this.date = $event.value;
  }

  addTimeToDate() {
    this.appointment.beginTime = this.createDate(new Date(this.date), this.appointment.beginDate).toISOString();
    this.appointment.endTime = this.createDate(new Date(this.date), this.appointment.endDate).toISOString();
    console.log(this.appointment.beginDate);
  }

  createDate(date: Date, time: Date): Date {
    let result = new Date(this.date);
    console.log(time);
    const dateArray = time.toString().split(':');

    result.setHours(Number(dateArray[0]) + 2);
    result.setMinutes(Number(dateArray[1]));

    result = new Date(result.toISOString());
    console.log(result);
    return result;
  }

  validate(): boolean {

    if (this.appointment.type === 'true') {
      this.appointment.type = 'Private';
    } else {
      this.appointment.type = 'Public';
    }
    if (this.appointment.title === '') {
      this.notificationService.open('Title not filled', null, {
        duration: 5000,
      });
      return false;
    } else if (this.appointment.title.length < 4) {
      this.notificationService.open('Title can`t be smaller than 4 characters', null, {
        duration: 5000,
      });
      return false;
    } else if (this.appointment.title.length > 50) {
      this.notificationService.open('Title can`t be greater than 50 characters', null, {
        duration: 5000,
      });
      return false;
    } else if (this.appointment.location.length <= 4) {
      console.log(this.appointment.location.length);
      this.notificationService.open('Location has to be greater than 4 characters', null, {
        duration: 5000,
      });
      return false;
    } else if (this.appointment.location.length > 250) {
      this.notificationService.open('Location has to be smaller than 250 characters', null, {
        duration: 5000,
      });
      return false;
    } else if (this.appointment.minPeople < 2) {
      this.notificationService.open('Appointment need more than 1 person', null, {
        duration: 5000,
      });
      return false;
    } else if (this.appointment.maxPeople) {
      if (this.appointment.maxPeople <= this.appointment.minPeople) {
        this.notificationService.open('Minimum people needs to be smaller than the maximum people', null, {
          duration: 5000,
        });
        return false;
      } else if (this.appointment.maxPeople > 999) {
        this.notificationService.open('Appointment maximum persons that can join is 999', null, {
          duration: 5000,
        });
        return false;
      }
    } else if (this.appointment.endDate < this.appointment.beginDate) {
      this.notificationService.open('End Time of appointment has to be planned after begin time', null, {
        duration: 5000,
      });
      return false;
    } else if (this.date.getTime() < new Date().getTime()) {
      this.notificationService.open('Date of appointment can`t be in the past', null, {
        duration: 5000,
      });
      return false;
    }  else if (this.appointment.description !== '') {
      if (this.appointment.description.length <= 4) {
        this.notificationService.open('Description has to be greater than 4 characters', null, {
          duration: 5000,
        });
        return false;
      } else if (this.appointment.description.length > 250) {
        this.notificationService.open('Description has to be smaller than 250 characters', null, {
          duration: 5000,
        });
        return false;
      }
    }
    return true;
  }
}
