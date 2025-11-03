import 'package:dartz/dartz.dart';
import 'package:ouhda/core/constant/faulier.dart';
import 'package:ouhda/feature/years/data/data_source/year_local_data_source.dart';
import 'package:ouhda/feature/years/domin/repository/year_repo.dart';

class YearRepoImp implements YearRepo {
  const YearRepoImp({required this.yearLocalDataSource});

  final YearLocalDataSource yearLocalDataSource;

  @override
  Either<Faulier, Future<void>> addYears({
    required String newYear,
    required int id,
  }) {
    try {
      Future<void> x = yearLocalDataSource.addBox(newYear, id);

      return right(x);
    } catch (e) {
      return left(Faulier(e.toString()));
    }
  }
}
