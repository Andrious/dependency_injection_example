import 'package:dependencyinjection/src/controller.dart'
    show Inj, Wheel;

class Car {
  //
  Car() {

   wheel = Inj.get();
  }
  Wheel wheel;

  drive() {
    wheel.spin();
  }
}




