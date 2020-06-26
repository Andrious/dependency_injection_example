import 'package:dependencyinjection/src/controller.dart' show Inj, Wheel;

/// Who knows. Could be one for specific testing.
import 'package:dependencyinjection/src/controller/steel_wheel.dart' hide Wheel;

/// Who knows. Could be one as a 'mock' class.
import 'package:dependencyinjection/src/controller/plastic_wheel.dart' hide Wheel;

class Car {
  //
  Car() {

   wheel = Inj.getWheel<Wheel>();

   wheel = Inj.getWheel<SteelWheel>();

   wheel = Inj.getWheel<PlasticWheel>();
  }
  Wheel wheel;

  drive() {
    wheel.spin();
  }
}




