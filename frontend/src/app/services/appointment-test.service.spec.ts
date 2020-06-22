import {TestBed} from '@angular/core/testing';

import {AppointmentTestService} from './appointment-test.service';

describe('AppointmentTestService', () => {
  let service: AppointmentTestService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(AppointmentTestService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
