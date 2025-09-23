class Teilnehmer {
  String vorname;
  String nachname;
  String geschlecht;
  int alter;
  int? telefonnummer;
  double? notendurchschnitt;

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
