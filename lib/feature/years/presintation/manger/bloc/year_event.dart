part of 'year_bloc.dart';

abstract class YearEvent extends Equatable {
  const YearEvent();

  @override
  List<Object> get props => [];
}

class AddYearEvent extends YearEvent {
  final String year;
  final int id;

  const AddYearEvent({required this.year, required this.id});
  @override
  List<Object> get props => [year, id];
}

class GetMonthsEvent extends YearEvent {
  final String id;

  const GetMonthsEvent({required this.id});
  @override
  List<Object> get props => [id];
}
