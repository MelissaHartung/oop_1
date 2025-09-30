import 'package:oop_1/aggregation_cdemy.dart';

void main() {
  Teilnehmer teilnehmer1 = Teilnehmer('Melissa', 'Hartung', Geschlecht.w);
  teilnehmer1.erstelleZutrittscode();
  print(teilnehmer1.geschlecht.bezeichnung);
  Teilnehmer teilnehmer2 = Teilnehmer('Max', 'Mustermann', Geschlecht.m);
  teilnehmer2.erstelleZutrittscode();
  // print(teilnehmer2);
  Teilnehmer teilnehmer3 = Teilnehmer('Hans', 'Meier', Geschlecht.d);
  teilnehmer3.erstelleZutrittscode();
  // print(teilnehmer3);'
  // Kurs kurs1 = Kurs('Dart Programmierung');
  // kurs1.fuegeTeilnehmerHinzu(Teilnehmer('Melissa', 'Hartung', Geschlecht.w));
  // kurs1.fuegeTeilnehmerHinzu(teilnehmer2);
  // kurs1.fuegeTeilnehmerHinzu(teilnehmer3);
  // Kurs kurs2 = Kurs('Flutter Entwicklung');
  // kurs2.fuegeTeilnehmerHinzu(Teilnehmer('Max', 'Mustermann', Geschlecht.m));
  // print(kurs1);
  // print(kurs2);
}
