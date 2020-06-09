export class EditAppointmentDto {
  id: number;
  title: string;
  description: string;
  location: string;
  type: string;
  minPeople: number;
  maxPeople: number;
  beginTime: string;
  endTime: string;
  organiser: Account;
}
