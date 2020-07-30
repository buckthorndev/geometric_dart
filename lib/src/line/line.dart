import 'dart:math';

import 'package:geometric_dart/src/angle/angle.dart';

/// line class
class Line {
  /// line class
  Line();

  /// calling angle
  final angle = Angle();

  /// Calculate the angle of a line, in degrees.
  ///
  /// syntax `lineAngle(List line)`
  ///
  /// return `number`
  /// ```dart
  /// final line = Line();
  /// var lineAngle = line.lineAngle([
  ///   [140, 140],
  ///   [253, 27]
  /// ]);
  /// print(lineAngle);
  /// ```
  num lineAngle(List line) => angle
      .angleToDegrees(atan2(line[1][1] - line[0][1], line[1][0] - line[0][0]));

  /// Calculate the distance between the endpoints of a line segment.
  ///
  /// syntax `lineLength(List line)`
  ///
  /// return `number`
  ///
  /// ```dart
  /// var lineLength = line.lineLength([
  ///   [4, 3],
  ///   [3, -2]
  /// ]);
  /// print(lineLength);
  /// ```
  num lineLength(List line) =>
      sqrt(pow(line[1][0] - line[0][0], 2) + pow(line[1][1] - line[0][1], 2));

  /// Calculate the midpoint of a line segment.
  ///
  /// syntax `lineMidpoint(List line)`
  /// return `List`
  ///
  /// ```dart
  /// var lineMidpoint = line.lineMidpoint([
  ///   [0, 2],
  ///   [8, 8]
  /// ]);
  /// print(lineMidpoint);
  /// ```
  List<dynamic> lineMidpoint(List line) =>
      [(line[0][0] + line[1][0]) / 2, (line[0][1] + line[1][1]) / 2];
}
