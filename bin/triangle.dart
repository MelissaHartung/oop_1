  enum MeasurementSytem {
    mm,
    cm,
    dm,
    m,
    inch,
    feet
  }

class Triangle {
  double widthInMm;
  double heightInMm;
  MeasurementSytem measurementSytem;

  Triangle(this.widthInMm, this.heightInMm): measurementSytem = MeasurementSytem.mm;

Triangle.cm (double widthInCm, double heightInCm): heightInMm = heightInCm * 10, widthInMm = widthInCm * 10, measurementSytem = MeasurementSytem.cm;
Triangle.dm (double widthInDm, double heightInDm): heightInMm = heightInDm * 100, widthInMm = widthInDm * 100, measurementSytem = MeasurementSytem.dm;
Triangle.m (double widthInM, double heightInM): heightInMm = heightInM * 1000, widthInMm = widthInM * 1000, measurementSytem = MeasurementSytem.m;
Triangle.inch (double widthInInch, double heightInInch): heightInMm = heightInInch * 25.4, widthInMm = widthInInch * 25.4, measurementSytem = MeasurementSytem.inch;
Triangle.feet (double widthInFeet, double heightInFeet): heightInMm = heightInFeet * 304.8, widthInMm = widthInFeet * 304.8, measurementSytem = MeasurementSytem.feet;

@override
String toString() { return 'widthInMm: $widthInMm, heightInMm: $heightInMm, measurementSytem: $measurementSytem'; }
}

