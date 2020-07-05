extension DateTimeComparator on DateTime {
  bool operator <(DateTime other) => this.isBefore(other);

  bool operator <=(DateTime other) => !this.isAfter(other);

  bool operator >(DateTime other) => this.isAfter(other);

  bool operator >=(DateTime other) => !this.isBefore(other);

  DateTime operator -(Duration difference) => this.subtract(difference);

  DateTime operator +(Duration difference) => this.add(difference);

  Duration operator |(DateTime other) => this.difference(other);
}
