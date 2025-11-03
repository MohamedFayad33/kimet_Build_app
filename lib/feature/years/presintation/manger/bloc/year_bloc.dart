import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ouhda/feature/years/domin/entities/month_entity.dart';
import 'package:ouhda/feature/years/domin/repository/year_repo.dart';
part 'year_event.dart';
part 'year_state.dart';

class YearBloc extends Bloc<YearEvent, YearState> {
  YearBloc(this.yearRepo) : super(YearInitial()) {
    on(addYear);
  }
  final YearRepo yearRepo;

  FutureOr addYear(AddYearEvent event, Emitter emit) async {
    var year = await yearRepo.addYears(newYear: event.year, id: event.id);
    year.fold(
      (faulier) {
        emit(faulier);
      },
      (success) {
        emit(success);
      },
    );
  }
}
