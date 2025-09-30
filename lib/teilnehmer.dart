/// Repräsentiert einen Teilnehmer.
/// Enthält persönliche Daten wie Name, Alter und Geschlecht.
class Teilnehmer {
  /// Den Vornamen
  String vorname;

  /// Der Nachname
  String nachname;

  /// Das Geschlecht ('m', 'w' oder 'd').
  String geschlecht;

  /// Das Alter in Jahren.
  int alter;

  /// Die optionale Telefonnummer
  int? telefonnummer;

  /// Der optionale Notendurchschnitt
  double? notendurchschnitt;

  /// Erstellt eine neue Instanz eines [Teilnehmer]s.
  /// Wirft einen [ArgumentError], wenn das [alter] ungültig ist oder
  /// das [geschlecht] nicht 'm', 'w' oder 'd' entspricht.
  Teilnehmer({
    required this.vorname,
    required this.nachname,
    required this.geschlecht,
    required this.alter,
    this.telefonnummer,
    this.notendurchschnitt,
  }) {
    if (alter < 0 || alter > 110) {
      throw ArgumentError('Das Alter muss zwischen 0 und 110 liegen.');
    }
    if (geschlecht != 'm' && geschlecht != 'w' && geschlecht != 'd') {
      throw ArgumentError('Geschlecht muss m, w oder d sein');
    }
  }
  @override
  String toString() {
    return 'Vorname: $vorname, Nachname: $nachname, Geschlecht: $geschlecht, Alter: $alter, Telefonnummer: $telefonnummer, Notendurchschnitt: $notendurchschnitt';
  }
}
