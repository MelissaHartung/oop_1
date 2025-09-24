import 'dart:math';

enum Geschlecht { m, w, d }

class Cdemy {
  List<Kurs> kurse = [];
  List<Teilnehmer> teilnehmer = [];

  void erstelleKurs(String kursName) {
    kurse.add(Kurs(kursName));
  }
}

class Kurs {
  String name;
  Kurs(this.name);
  List<Teilnehmer> teilnehmer = [];
  void fuegeTeilnehmerHinzu(Teilnehmer teilnehmer) {
    this.teilnehmer.add(teilnehmer);
  }

  @override
  String toString() {
    return 'Kurs: $name, Teilnehmer: ${teilnehmer.length}';
  }
}

class Teilnehmer {
  String vorname;
  String nachname;
  Geschlecht geschlecht;
  Zutrittscode? zutrittscode;

  Teilnehmer(this.vorname, this.nachname, this.geschlecht);
  void erstelleZutrittscode() {
    zutrittscode = Zutrittscode(this);
  }

  @override
  String toString() {
    return 'Vorname: $vorname, Nachname: $nachname, Geschlecht: $geschlecht, Zutrittscode: ${zutrittscode?.code}';
  }
}

class Zutrittscode {
  int code;
  Teilnehmer teilnehmer;

  Zutrittscode(this.teilnehmer) : code = _generateCode();

  static int _generateCode() {
    var random = Random();
    return random.nextInt(900000) + 100000;
  }

  @override
  String toString() {
    return 'Code: $code';
  }
}
