export interface Appointment {
  id: number;
  title: string;
  description: string;
  location: string;
  type: string;
  minPeople: number;
  maxPeople: number;
  beginDate: Date;
  endDate: Date;
  organiser: Account;
}
