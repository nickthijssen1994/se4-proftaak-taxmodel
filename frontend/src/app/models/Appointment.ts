export interface Appointment {
  id: number;
  title: string;
  description: string;
  location: string;
  type: string;
  size: number;
  beginDate: Date;
  endDate: Date;
  organiser: Account;
}
