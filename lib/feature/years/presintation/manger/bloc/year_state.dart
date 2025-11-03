part of 'year_bloc.dart';

abstract class YearState extends Equatable {
  const YearState();

  @override
  List<Object> get props => [];
}

class YearInitial extends YearState {}

class YearSuccess extends YearState {
  final List<MonthEntity> months;

  const YearSuccess(this.months);
  @override
  List<Object> get props => [months];
}

class YearFaulir extends YearState {
  final String msError;

  const YearFaulir(this.msError);
}
