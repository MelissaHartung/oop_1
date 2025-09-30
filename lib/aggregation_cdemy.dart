import 'dart:math';

/// Repräsentiert das Geschlecht einer Person.
/// Jeder Wert im Enum hat eine zugehörige [bezeichnung] als String.
enum Geschlecht {
  /// männliches Geschlecht
  m('männlich'),

  /// weibliches Geschlecht
  w('weiblich'),

  /// diverses Geschlecht
  d('divers');

  /// vollständige Beschreibung des geschlechts.
  final String bezeichnung;
  const Geschlecht(this.bezeichnung);
}

/// Repräsentiert die gesamte Schule (Cdemy).
///
/// Diese Klasse ist der  Verwaltungspunkt für  [Kurs] und
/// [Teilnehmer] der Akademie.
class Cdemy {
  /// Eine Liste aller in der Cdemy verfügbaren Kurse.
  List<Kurs> kurse = [];

  /// Eine Liste aller bei der Cdemy registrierten Teilnehmer,
  /// unabhängig von ihrer Kursteilnahme.
  List<Teilnehmer> teilnehmer = [];

  /// Erstellt einen neuen [Kurs] mit dem gegebenen [kursName] und fügt ihn
  /// zur Liste der [kurse] hinzu.
  void erstelleKurs(String kursName) {
    kurse.add(Kurs(kursName));
  }
}

///  klasse die von [Cdemy] abhängig ist, beinhaltet den [name].
class Kurs {
  /// Der Name des Kurses.
  String name;

  /// Für eine Instanz des kurses.
  Kurs(this.name);

  /// liste der teilnehmer die am kurs teilnehmen
  List<Teilnehmer> teilnehmer = [];

  /// fügt teilnehmer hinzu
  void fuegeTeilnehmerHinzu(Teilnehmer teilnehmer) {
    this.teilnehmer.add(teilnehmer);
  }

  @override
  String toString() {
    return 'Kurs: $name, Teilnehmer: ${teilnehmer.length}';
  }
}

/// Unabhängige Klasse die Teilnehmer repräsentiert.
class Teilnehmer {
  /// Der Vorname der Teilnehmer
  String vorname;

  /// Der Nachname der Teilnehmer
  String nachname;

  /// Der Geschlecht der Teilnehmer
  Geschlecht geschlecht;

  /// Zutrittscode die die Teilnehmer bekommen
  Zutrittscode? zutrittscode;

  /// Für die Instanz eines Teilnehmers

  Teilnehmer(this.vorname, this.nachname, this.geschlecht);

  /// holt die generierten zufallscode für den Teilnehmer
  void erstelleZutrittscode() {
    zutrittscode = Zutrittscode(this);
  }

  @override
  String toString() {
    return 'Vorname: $vorname, Nachname: $nachname, Geschlecht: $geschlecht, Zutrittscode: ${zutrittscode?.code}';
  }
}

/// Repräsentiert einen einmaligen Zutrittscode für einen [Teilnehmer].
/// Ein Zutrittscode kann nicht ohne einen zugehörigen [Teilnehmer] existieren.
class Zutrittscode {
  /// Der 6-stellige numerische Code.
  int code;

  /// Der [Teilnehmer], dem dieser Code zugeordnet ist.
  Teilnehmer teilnehmer;

  /// Erstellt eine neue Instanz eines Zutrittscodes.

  /// Der Code wird dabei zufällig generiert und dem [teilnehmer] zugeordnet.
  Zutrittscode(this.teilnehmer) : code = _generateCode();

  /// Generiert eine zufällige 6-stellige Zahl.
  static int _generateCode() {
    var random = Random();
    return random.nextInt(900000) + 100000;
  }

  @override
  String toString() {
    return code.toString();
  }
}
