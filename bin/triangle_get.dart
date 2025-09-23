enum MeasurementSytem { mm, cm, dm, m, inch, feet }

class TriangleGet {
  double _widthInMm;
  double _heightInMm;
  MeasurementSytem measurementSytem;

  TriangleGet(this._widthInMm, this._heightInMm)
    : measurementSytem = MeasurementSytem.mm;

    double get widthInCm => _widthInMm / 10;
    double get heightInCm => _heightInMm/10;
    double get widthInDm => _widthInMm / 100;
    double get heightInDm => _heightInMm/100;
    double get widthInM => _widthInMm / 1000;
    double get heightInM => _heightInMm/1000;
double get widthInInch => _widthInMm / 25.4;
double get heightInInch => _heightInMm/25.4;
double get widthInFeet => _widthInMm / 304.8;
double get heightInFeet => _heightInMm/304.8;





set widthInCm(double widht) {
  if (widht >0)
{
  _widthInMm = widht * 10;
}
}
set heightInCm(double height) {
  if (height >0)
{
  _heightInMm = height * 10;
}
}
set widthInDm(double widht) {
  if (widht >0)
{
  _widthInMm = widht * 100;
}
}
set heightInDm(double height) {
  if (height >0)
{
  _heightInMm = height * 100;
}
}
set widthInM(double widht) {
  if (widht >0)
{
  _widthInMm = widht * 1000;
}
}
set heightInM(double height) {
  if (height >0)
{
  _heightInMm = height * 1000;
}
}
set widthInInch(double widht) {
  if (widht >0)
{
  _widthInMm = widht * 25.4;
}
}
set heightInInch(double height) {
  if (height >0)
{
  _heightInMm = height * 25.4;
}
}
set widthInFeet(double widht) {
  if (widht >0)
{
  _widthInMm = widht * 304.8;
}
}
set heightInFeet(double height) {
  if (height >0)
{
  _heightInMm = height * 304.8;
}
}




  @override
  String toString() {
    return 'widthInMm: $_widthInMm, heightInMm: $_heightInMm, measurementSytem: $measurementSytem';
  }
}
