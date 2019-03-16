class Unit {
  const Unit(this._unitName):  assert(_unitName != null);
  final String _unitName;
  String toString(){
    return this._unitName;
  }
}