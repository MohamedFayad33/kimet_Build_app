part of 'year_bloc.dart';

abstract class YearState extends Equatable {
  const YearState();

  @override
  List<Object> get props => [];
}

class YearInitial extends YearState {}

class YearLoading extends YearState {}

class YearSuccess extends YearState {
  const YearSuccess();
  @override
  List<Object> get props => [];
}

class YearFaulir extends YearState {
  final String msError;

  const YearFaulir(this.msError);
}
