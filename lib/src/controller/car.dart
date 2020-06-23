
import 'package:dependencyinjection/src/controller.dart';

class Car {
  //
  Car(){

    wheel = Wheel();
  }
  Wheel wheel;

  drive() {
    wheel.spin();
  }
}




