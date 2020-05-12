import {Component, OnInit} from '@angular/core';
import {Appointment} from '../../models/Appointment';
import {AppointmentTestService} from '../../services/appointment-test.service';
import {ActivatedRoute} from '@angular/router';
import {Location} from '@angular/common';
import {MatSnackBar} from '@angular/material/snack-bar';

@Component({
  selector: 'app-create-appointment',
  templateUrl: './create-appointment.component.html',
  styleUrls: ['./create-appointment.component.css']
})
export class CreateAppointmentComponent implements OnInit {
  appointment: Appointment = {
    id: null,
    title: '',
    description: '',
    location: '',
    type: 'true',
    minSize: null,
    maxSize: null,
    beginDate: new Date(),
    endDate: null,
    organiser: null
  };

  date: Date;
  disabled = false;
  private testString: string;
  constructor(private route: ActivatedRoute, private appointmentTestService: AppointmentTestService,
              private location: Location, private notificationService: MatSnackBar) {
  }

  ngOnInit(): void {
    const currentDate = new Date('MM/dd/yyyy').getDate();
    this.date = new Date(currentDate);
  }

  onFormSubmit(): void {
    if (this.validate()) {
      this.completeBeginDate();
      this.completeEndDate();
      console.log(this.appointment);
      console.log(this.date);
      this.appointmentTestService.addAppointment(this.appointment).subscribe();
      this.notificationService.open('Appointment created', null, {
        duration: 5000,
      });
     }
  }

  goBack(): void {
    this.location.back();
  }

  onDangeDate($event): void {
    this.date = $event.value;
  }

  completeBeginDate() {
    const result = new Date(this.date);
    const dateArray =  this.appointment.beginDate.toString().split(':');

    console.log(dateArray);

    result.setHours(Number(dateArray[0]));
    result.setMinutes(Number(dateArray[1]));
    this.appointment.beginDate = result;
  }

  completeEndDate() {
    const result2 = new Date(this.date);
    const dateArray2 =  this.appointment.endDate.toString().split(':');

    console.log(dateArray2);

    result2.setHours(Number(dateArray2[0]));
    result2.setMinutes(Number(dateArray2[1]));
    this.appointment.endDate = result2;
  }

  validate(): boolean {

    if (this.appointment.type.toString() === 'true') {
      this.appointment.type = 'Private';
    } else {
      this.appointment.type = 'Public';
    }
    if (this.appointment.title === '') {
       this.notificationService.open('Title not filled', null, {
         duration: 5000,
       });
       return false;
     } else if (this.appointment.title.length <= 4) {
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
     } else if (this.appointment.minPeople  < 2) {
       this.notificationService.open('Appointment need more than 1 person', null, {
         duration: 5000,
       });
       return false;
     } else if (this.appointment.maxPeople) {
      if (this.appointment.maxPeople <= this.appointment.maxPeople) {
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
    }  else if (!this.appointment.beginDate) {
       this.notificationService.open('Appointment needs to be planned later than 10AM', null, {
         duration: 5000,
       });
       return false;
      } else if (this.appointment.endDate < this.appointment.beginDate) {
       this.notificationService.open('End Time of appointment has to be planned after begin time', null, {
         duration: 5000,
       });
       return false;
     } else if (this.appointment.description !== '') {
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
