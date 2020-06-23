
import 'package:mockito/mockito.dart';

import 'package:dependencyinjection/src/controller/wheel.dart' as c;

class PlasticWheel extends Mock implements c.Wheel{
  @override
  String get type => 'Plastic';
}


class Wheel extends PlasticWheel{}







