import { Injectable } from '@angular/core';
import {InMemoryDbService} from 'angular-in-memory-web-api';
import {Appointment} from '../models/Appointment';

@Injectable({
  providedIn: 'root'
})
export class InMemoryDataService implements InMemoryDbService {

  createDb() {
    const appointments = [
      { id: 1, title: 'Test1', description: 'Test1', location: 'Test1'},
      { id: 2, title: 'Test2', description: 'Test2', location: 'Test2'}
    ];
    return {appointments};
  }

  genId(appointments: Appointment[]): number {
    return appointments.length > 0 ? Math.max(...appointments.map(appointment => appointment.id)) + 1 : 1;
  }
}
