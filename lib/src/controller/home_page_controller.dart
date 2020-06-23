
import 'package:dependencyinjection/src/model.dart';

class Controller {

  Model model = Model();

  int get counter => model.counter;

  void incrementCounter() => model.counter++;
}




