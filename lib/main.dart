import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:ouhda/core/di/app_di.dart';
import 'package:ouhda/core/hive_services/hive_helper.dart';
import 'package:ouhda/core/routs/app_routes.dart';
import 'package:ouhda/feature/home/domain/repositories/home_repository.dart';
import 'package:ouhda/feature/home/presentaion/manger/bloc/category_bloc.dart';
import 'package:ouhda/feature/years/domin/repository/year_repo.dart';
import 'package:ouhda/feature/years/presintation/manger/bloc/year_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveHelper.setUp();
  AppDi.init();
  // Hive.deleteFromDisk();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              CategoryBloc(homeRepository: sl.get<HomeRepository>())
                ..add(GetCategoryEvent()),
        ),
        BlocProvider(create: (context) => YearBloc(sl.get<YearRepo>())),
      ],

      child: MaterialApp(routes: AppRoutes.routes),
    );
  }
}
