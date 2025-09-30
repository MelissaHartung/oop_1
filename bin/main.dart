import 'package:oop_1/teilnehmer.dart';
import 'package:oop_1/triangle.dart';

Teilnehmer teilnehmer1 = Teilnehmer(
  vorname: 'Melissa',
  nachname: 'Hartung',
  geschlecht: 'w',
  alter: 26,
);
Teilnehmer teilnehmer2 = Teilnehmer(
  vorname: 'Max',
  nachname: 'Mustermann',
  geschlecht: 'm',
  alter: 12,
  telefonnummer: 1234567890,
);
Teilnehmer teilnehmer3 = Teilnehmer(
  vorname: 'Hans',
  nachname: 'Meier',
  geschlecht: 'd',
  alter: 33,
  telefonnummer: 8374359025,
  notendurchschnitt: 1.3,
);
TriangleGet triangle1 = TriangleGet(30, 20);
// TriangleGet triangle1 = TriangleGet(10,-200);

void main() {
  // triangle1.convertTo(MeasurementSytem.cm);
  // triangle1.setHeight(MeasurementSytem.m, 8);

  triangle1.convertTo(MeasurementSytem.cm);
  print(triangle1.getHeight(MeasurementSytem.cm));

  // print(triangle1.areaGetter(triangle1));

  // triangle1.heightInInch = 300;
  //   print(triangle1.heightInDm);
  // print(teilnehmer1);
  // print(teilnehmer2);
  // print(teilnehmer3);
}
