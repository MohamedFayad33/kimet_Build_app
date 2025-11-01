part of 'category_bloc.dart';

abstract class CategoryState extends Equatable {}

class CategoryInitial extends CategoryState {
  @override
  List<Object?> get props => [];
}

class CategoryLoading extends CategoryState {
  @override
  List<Object?> get props => [];
}

class CategorySuccess extends CategoryState {
  final List<CategoryEntity> myCategories;

  CategorySuccess(this.myCategories);
  @override
  List<Object?> get props => [myCategories];
}

class CategoryFaulier extends CategoryState {
  final String msError;

  CategoryFaulier(this.msError);
  @override
  List<Object?> get props => [msError];
}
