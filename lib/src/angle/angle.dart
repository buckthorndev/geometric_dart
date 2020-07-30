import 'dart:math';

/// angle class
class Angle {
  /// angle class with three operations
  Angle();

  /// find angle of reflection
  ///
  /// syntax `angleRefect(incidenceAngle,surfaceAngle)`
  ///
  /// return `number`
  num angleReflect(incidenceAngle, surfaceAngle) {
    var ang = surfaceAngle * 2 - incidenceAngle;
    return ang >= 360 ? ang - 360 : ang < 0 ? ang + 360 : ang;
  }

  /// Convert angle to degree
  ///
  /// syntax `angleToDegrees(angle)`
  /// return `number`
  num angleToDegrees(angle) => angle * 180 / pi;

  /// convert angle to radian
  ///
  ///syntax  `angleToRadian(angle)`
  ///
  /// return `number`
  num angleToRadian(angle) => angle / 180 * pi;
}
