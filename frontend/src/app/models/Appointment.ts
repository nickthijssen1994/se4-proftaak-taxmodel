export interface Appointment {
  id: number;
  title: string;
  description: string;
  location: string;
  type: string;
  minSize: number;
  maxSize: number;
  beginDate: Date;
  endDate: Date;
  organiser: Account;
}
