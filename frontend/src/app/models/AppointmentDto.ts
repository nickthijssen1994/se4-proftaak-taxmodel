export interface AppointmentDto {
  title: string;
  description: string;
  location: string;
  type: string;
  minPeople: number;
  maxPeople: number;
  beginDate: Date;
  endDate: Date;
  beginTime: string;
  endTime: string;
  organiser: Account;
}
