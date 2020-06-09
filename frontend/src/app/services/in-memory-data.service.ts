import {Injectable} from '@angular/core';
import {InMemoryDbService} from 'angular-in-memory-web-api';
import {Appointment} from '../models/appointment';

@Injectable({
  providedIn: 'root'
})
export class InMemoryDataService implements InMemoryDbService {

  createDb() {
    const appointments = [
      {
        id: 1,
        title: 'Lunch',
        description: 'Test1',
        location: 'Bagles',
        type: 'Private',
        size: 2,
        beginDate: Date.now(),
        endDate: Date.now()
      },
      {
        id: 2,
        title: 'Vergadering',
        description: 'Test2',
        location: 'Kantoor',
        type: 'Public',
        size: 5,
        beginDate: Date.now(),
        endDate: Date.now()
      }
    ];
    return {appointments};
  }

  genId(appointments: Appointment[]): number {
    return appointments.length > 0 ? Math.max(...appointments.map(appointment => appointment.id)) + 1 : 1;
  }
}
