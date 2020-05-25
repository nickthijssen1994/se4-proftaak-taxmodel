export interface Appointment {
  id: number;
  title: string;
  description: string;
  location: string;
  type: string;
  minPeople: number;
  maxPeople: number;
  beginTime: Date;
  endTime: Date;
  organiser: Account;
}
