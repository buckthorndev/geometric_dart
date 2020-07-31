import 'line/line.dart';
import 'angle/angle.dart';
import 'point/point.dart';

class Geometric {
  /// Angle class for doing angles related operations
  ///
  final Angle angle;

  /// line class for doing lines related operations
  ///
  final Line line;

  /// line class for doing points related operations

  final Point point;

  /// Geometric
  Geometric()
      : angle = Angle(),
        line = Line(),
        point = Point();
}
