import 'teilnehmer.dart';

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
void main() {
  print(teilnehmer1);
  print(teilnehmer2);
  print(teilnehmer3);
}
