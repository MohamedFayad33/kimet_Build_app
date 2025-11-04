import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:ouhda/core/hive_services/hive_names_boxes.dart';
import 'package:ouhda/feature/home/domain/entities/category_entity.dart';
import 'package:ouhda/feature/home/domain/repositories/home_repository.dart';
part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc({required this.homeRepository}) : super(CategoryInitial()) {
    on<GetCategoryEvent>(getCategory);
    on<SaveCategoryEvent>(saveCategory);
    // on<AddYearEvent>(addYears);
  }

  final HomeRepository homeRepository;
  final List<CategoryEntity> mycategory = [];

  FutureOr<void> getCategory(
    GetCategoryEvent event,
    Emitter<CategoryState> emit,
  ) {
    // emit(CategoryLoading());
    var result = homeRepository.myCatogry();
    result.fold(
      (faulier) {
        emit(CategoryFaulier(faulier.msErrore));
      },
      (sucess) {
        mycategory.addAll(sucess);
        emit(CategorySuccess(sucess));
      },
    );
  }

  FutureOr<void> saveCategory(SaveCategoryEvent event, Emitter emit) async {
    Box<CategoryEntity> myBox = Hive.box<CategoryEntity>(
      HiveNamesBoxes.categories,
    );
    myBox.put(event.category.id, event.category);

    emit(CategorySuccess(myBox.values.toList()));
  }

  // FutureOr<void> addYears(AddYearEvent event, Emitter emit) async {
  //   final box = Hive.box<CategoryEntity>(HiveNamesBoxes.categories);
  //   final item = box.get(event.index);

  //   if (item != null) {
  //     item.years.add(event.year);
  //     await item.save();
  //   }
  //   print(item!.years);
  //   try {} catch (e) {
  //     print(e);
  //   }
  // }
}
