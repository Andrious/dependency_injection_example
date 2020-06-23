

import 'package:dependencyinjection/src/controller/wheel.dart' as c;

class Wheel implements c.Wheel{

  Wheel() : _deprecated = c.Wheel();
  c.Wheel _deprecated;

  @override
  String get type => 'Other';

  @override
  void spin() => _deprecated.spin();
}