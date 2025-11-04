import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ouhda/core/constant/faulier.dart';
import 'package:ouhda/feature/years/domin/entities/month_entity.dart';
import 'package:ouhda/feature/years/domin/repository/year_repo.dart';
part 'year_event.dart';
part 'year_state.dart';

class YearBloc extends Bloc<YearEvent, YearState> {
  YearBloc(this.yearRepo) : super(YearInitial()) {
    on<AddYearEvent>(addYear);
    on<GetMonthsEvent>(getMonths);
  }
  final YearRepo yearRepo;
  List<MonthEntity> myMonth = [];

  FutureOr addYear(AddYearEvent event, Emitter emit) async {
    emit(YearLoading());
    Either<Faulier, void> year = await yearRepo.addYears(
      newYear: event.year,
      id: event.id,
    );
    year.fold(
      (faulier) {
        emit(YearFaulir(faulier.toString()));
      },
      (success) {
        emit(YearSuccess());
      },
    );
  }

  FutureOr getMonths(GetMonthsEvent event, Emitter emit) async {
    myMonth.clear();
    List<MonthEntity> months = await yearRepo.getMonths(event.id);
    print(months);
    myMonth.addAll(months);
  }
}
