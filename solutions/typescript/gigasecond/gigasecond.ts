export class Gigasecond {
  private static length_in_milliseconds = 1_000_000_000_000;
  private startDate: Date;

  constructor(startDate: Date) {
    this.startDate = startDate; 
  }
  public date(): Date { 
    return new Date(this.startDate.valueOf() + Gigasecond.length_in_milliseconds);
  }
}
