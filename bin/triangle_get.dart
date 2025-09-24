enum MeasurementSytem { mm, cm, dm, m, inch, feet }

class TriangleGet {
  double get height => getHeight(measurementSytem);
  double get width => getWidth(measurementSytem);
  double _widthInMm;
  double _heightInMm;
  MeasurementSytem measurementSytem;

  TriangleGet(this._widthInMm, this._heightInMm)
    : measurementSytem = MeasurementSytem.mm;

  getHeight(MeasurementSytem ms) {
    if (ms == MeasurementSytem.mm) return _heightInMm;
    if (ms == MeasurementSytem.cm) return _heightInMm / 10;
    if (ms == MeasurementSytem.dm) return _heightInMm / 100;
    if (ms == MeasurementSytem.m) return _heightInMm / 1000;
    if (ms == MeasurementSytem.inch) return _heightInMm / 25.4;
    if (ms == MeasurementSytem.feet) return _heightInMm / 304.8;
    return null;
  }

  getWidth(MeasurementSytem ms) {
    if (ms == MeasurementSytem.mm) return _widthInMm;
    if (ms == MeasurementSytem.cm) return _widthInMm / 10;
    if (ms == MeasurementSytem.dm) return _widthInMm / 100;
    if (ms == MeasurementSytem.m) return _widthInMm / 1000;
    if (ms == MeasurementSytem.inch) return _widthInMm / 25.4;
    if (ms == MeasurementSytem.feet) return _widthInMm / 304.8;
    return null;
  }

  setHeight(MeasurementSytem ms, double height) {
    if (height <= 0) return;
    if (ms == MeasurementSytem.mm) _heightInMm = height;
    if (ms == MeasurementSytem.cm) _heightInMm = height * 10;
    if (ms == MeasurementSytem.dm) _heightInMm = height * 100;
    if (ms == MeasurementSytem.m) _heightInMm = height * 1000;
    if (ms == MeasurementSytem.inch) _heightInMm = height * 25.4;
    if (ms == MeasurementSytem.feet) _heightInMm = height * 304.8;
  }

  setWidth(MeasurementSytem ms, double width) {
    if (width <= 0) return;
    if (ms == MeasurementSytem.mm) _widthInMm = width;
    if (ms == MeasurementSytem.cm) _widthInMm = width * 10;
    if (ms == MeasurementSytem.dm) _widthInMm = width * 100;
    if (ms == MeasurementSytem.m) _widthInMm = width * 1000;
    if (ms == MeasurementSytem.inch) _widthInMm = width * 25.4;
    if (ms == MeasurementSytem.feet) _widthInMm = width * 304.8;
  }

  areaGetter(TriangleGet triangle) {
    return triangle._heightInMm * triangle._widthInMm;
  }

  @override
  String toString() {
    return 'widthInMm: $_widthInMm, heightInMm: $_heightInMm, measurementSytem: $measurementSytem';
  }
}
