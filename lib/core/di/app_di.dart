import 'package:get_it/get_it.dart';
import 'package:ouhda/feature/home/di/home_di.dart';

var sl = GetIt.instance;

abstract class AppDi {
  static void init() {
    HomeDi.settings();
  }
}
