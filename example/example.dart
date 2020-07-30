import 'package:geometric_dart/geometric_dart.dart';

void main() {
  var geometric = Geometric();

  // line angle
  var angleTodegeree = geometric.angle.angleToDegrees(49);
  print(angleTodegeree);

  // line midpoint
  var lineMidpoint = geometric.line.lineMidpoint([
    [0, 2],
    [8, 8]
  ]);
  print(lineMidpoint);
}
