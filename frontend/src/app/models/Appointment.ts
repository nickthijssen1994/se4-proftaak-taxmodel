export interface Appointment {
  id: number;
  title: string;
  description: string;
  location: string;
  beginDate: Date;
  endDate: Date;
  organiser: Account;
}
