extension ColorStringExtension on String? {
  int get ColorValue {
    var _newColor = this?.replaceFirst('#','0xff') ?? '';
    return int.parse(_newColor);
  }
}