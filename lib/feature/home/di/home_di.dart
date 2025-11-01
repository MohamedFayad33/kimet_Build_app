import 'package:ouhda/core/di/app_di.dart';
import 'package:ouhda/feature/home/data/data_source/home_local_data_souce.dart';
import 'package:ouhda/feature/home/data/repository/home_repository_imp.dart';
import 'package:ouhda/feature/home/domain/repositories/home_repository.dart';

abstract class HomeDi {
  static void settings() {
    sl.registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImp(homeLocalDataSouce: HomeLocalDataSouceImp()),
    );
  }
}
