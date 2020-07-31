import 'dart:math';
import '../angle/angle.dart';

/// point class
class Point {
  /// point class
  Point();

  /// helper funtion for point rotate
  List<dynamic> _rotate(List point, angle) {
    return [
      (point[0] * cos(angle)) - point[1] * sin(angle),
      (point[0] * sin(angle)) + point[1] * cos(angle)
    ];
  }

  /// Translate a point by an angle in degrees and distance
  ///
  /// syntax `pointTranslate(List point, angle, distance)`
  ///
  /// return `List<dynamic>`
  List<dynamic> pointTranslate(List point, angle, distance) {
    var radian = Angle().angleToRadian(angle);
    return [
      point[0] + distance * cos(radian),
      point[1] + distance * sin(radian)
    ];
  }

  /// Rotate  a point by an angle in degrees around an origin.
  ///
  /// syntax `pointRotate(List point, angle, [List origin])`
  ///
  /// return `List<dynamic>`
  List<dynamic> pointRotate(List point, angle, [List origin]) {
    origin ??= [0, 0];
    var radian = Angle().angleToRadian(angle);
    if (origin[0] == 0 && origin[0] == 0) {
      return _rotate(point, radian);
    } else {
      var p0 = [point[0] - origin[0], point[1] - origin[1]];
      var rotated = _rotate(p0, radian);
      return [rotated[0] + origin[0], rotated[1] + origin[1]];
    }
  }
}
