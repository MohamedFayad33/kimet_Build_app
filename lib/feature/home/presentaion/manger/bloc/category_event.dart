part of 'category_bloc.dart';

abstract class CategoryEvent extends Equatable {}

class GetCategoryEvent extends CategoryEvent {
  @override
  List<Object?> get props => [];
}

class SaveCategoryEvent extends CategoryEvent {
  final CategoryEntity category;

  SaveCategoryEvent({required this.category});
  @override
  List<Object?> get props => [category];
}

// class AddYearEvent extends CategoryEvent {
//   final int index;
//   final String year;

//   AddYearEvent({required this.index, required this.year});
//   @override
//   List<Object?> get props => [index, year];
// }
