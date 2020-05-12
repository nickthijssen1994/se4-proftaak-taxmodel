export class CalendarEvent {
  static create(event: { id: number; begin: string, end: string, title: string; }) {
    return { id: event.id, begin: event.begin, end: event.end, title: event.title};
}
}
