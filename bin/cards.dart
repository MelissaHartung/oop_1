enum Rollen {
  karo,
  herz,
  pik,
  kreuz
}
enum Farbe {
  rot,
  schwarz
}
enum Wert {
  as,
  sieben,
  acht,
  neun,
  zehn,
  bube,
  dame,
  koenig,
  joker
}

class Cards {
  Wert wert;
  Rollen rolle;
  Farbe farbe;
  

  Cards(this.wert, this.rolle, this.farbe);
  @override
  String toString() {
    return 'Wert: $wert, Rolle: $rolle, Farbe: $farbe';
  }

}