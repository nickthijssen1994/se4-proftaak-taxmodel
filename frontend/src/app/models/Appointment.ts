export interface Appointment {
  id: number;
  Title: string;
  BeginTime: any;
  EndTime: any;
  Location: string;
  Description: string;
  OrganiserId: Account;
  Size: number;
  Type: string;
  MaxPeople: number;
  MinPeople: number;
}
