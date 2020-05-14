export interface AppointmentDto {
  title: string;
  description: string;
  location: string;
  type: string;
  minPeople: number;
  maxPeople: number;
  beginDate: string;
  endDate: string;
  beginTime: Date;
  endTime: Date;
  organiser: Account;
}
