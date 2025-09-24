enum MeasurementSystem {
  mm(1),
  cm(10),
  dm(100),
  m(1000),
  inch(25.4),
  feet(304.8);

  final double toMmFactor;
  const MeasurementSystem(this.toMmFactor);
}

class Triangle {
  double widthInMm;
  double heightInMm;
  MeasurementSystem measurementSystem;

  Triangle(this.widthInMm, this.heightInMm)
    : measurementSystem = MeasurementSystem.mm;

  void convertTo(MeasurementSystem to) {
    if (to == measurementSystem) return;
    widthInMm = widthInMm * measurementSystem.toMmFactor / to.toMmFactor;
    heightInMm = heightInMm * measurementSystem.toMmFactor / to.toMmFactor;
    measurementSystem = to;
  }

  @override
  String toString() {
    return 'widthInMm: $widthInMm, heightInMm: $heightInMm, measurementSytem: $measurementSystem';
  }

  void areaGetter(Triangle triangle1) {}
}
