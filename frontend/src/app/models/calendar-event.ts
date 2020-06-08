import construct = Reflect.construct;

export class CalendarEvent {
  id: number;
  title: string;
  start: Date;
  end: Date;
  constructor(Id: number, Title: string, Start: Date, End: Date) {
    this.id = Id;
    this.title = Title;
    this.start = Start;
    this.end = End;
}
}
