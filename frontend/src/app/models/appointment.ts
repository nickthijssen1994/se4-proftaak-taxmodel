export interface Appointment {
  id: number;
  title: string;
  beginTime: Date;
  endTime: Date;
  location: string;
  description: string;
  organiser: Account;
  size: number;
  type: string;
  peopleCount: number;
  maxPeople: number;
  minPeople: number;
}
