import 'teilnehmer.dart';
import 'triangle.dart';
import 'cards.dart';


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


Triangle triangle1 =Triangle(10, 20);
Triangle triangle2 = Triangle.cm(10, 20);
Triangle triangle3 = Triangle.dm(10, 20);
Triangle triangle4 = Triangle.m(10, 20);
Triangle triangle5 = Triangle.inch(10, 20);
Triangle triangle6 = Triangle.feet(10, 20);

Cards cards1 = Cards(Wert.as, Rollen.karo, Farbe.schwarz);
Cards cards2 = Cards(Wert.sieben, Rollen.herz, Farbe.schwarz);
Cards cards3 = Cards(Wert.acht, Rollen.pik, Farbe.schwarz);
Cards cards4 = Cards(Wert.neun, Rollen.kreuz, Farbe.schwarz);

void main (){

    print(teilnehmer1);
    print(teilnehmer2);
    print(teilnehmer3);
print(triangle1);
print(triangle2);
print(triangle3);
print(triangle4);
print(triangle5);
print(triangle6);
// print(cards1);
// print(cards2);
// print(cards3);
// print(cards4);
}
