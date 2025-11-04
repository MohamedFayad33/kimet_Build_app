import 'package:ouhda/core/di/app_di.dart';
import 'package:ouhda/feature/years/data/data_source/year_local_data_source.dart';
import 'package:ouhda/feature/years/data/repository/year_repo_imp.dart';
import 'package:ouhda/feature/years/domin/repository/year_repo.dart';

abstract class YearDi {
  static void settings() {
    sl.registerLazySingleton<YearLocalDataSource>(() => YearLocalDataSource());
    sl.registerLazySingleton<YearRepo>(
      () => YearRepoImp(yearLocalDataSource: sl.get<YearLocalDataSource>()),
    );
  }
}
