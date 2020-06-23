import 'package:get_it/get_it.dart' as g;

import 'package:dependencyinjection/src/controller/wheel.dart' show Wheel;

import 'package:dependencyinjection/src/controller/steel_wheel.dart'
    show SteelWheel;

import 'package:dependencyinjection/src/controller/plastic_wheel.dart'
    show PlasticWheel;

class Inj {
  //
  static void _initInj() {
    try {
      _getIt.registerLazySingleton<Wheel>(() => Wheel());
      _getIt.registerLazySingleton<SteelWheel>(() => SteelWheel());
      _getIt.registerLazySingleton<PlasticWheel>(() => PlasticWheel());
      _init = true;
    } catch (ex) {
      _init = false;
    }
  }
  static bool _init = false;
  static g.GetIt _getIt = g.GetIt.instance;

  static Wheel get() {
    if (!_init) _initInj();
    return _getIt.get<Wheel>();
  }

//  static SteelWheel get() {
//    if (!_init) _initInj();
//    return _getIt.get<SteelWheel>();
//  }

//  static PlasticWheel get() {
//    if (!_init) _initInj();
//    return _getIt.get<PlasticWheel>();
//  }
}




