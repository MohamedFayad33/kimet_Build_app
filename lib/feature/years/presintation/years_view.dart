import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ouhda/core/routs/app_routs_name.dart';
import 'package:ouhda/feature/home/domain/entities/category_entity.dart';
import 'package:ouhda/feature/years/presintation/manger/bloc/year_bloc.dart';
import 'package:ouhda/feature/years/presintation/widget/custom_dialog_add_year.dart';
import 'package:ouhda/feature/years/presintation/widget/show_year.dart';

class YearsView extends StatelessWidget {
  const YearsView({super.key});

  @override
  Widget build(BuildContext context) {
    YearBloc bloc = BlocProvider.of<YearBloc>(context);
    CategoryEntity category =
        ModalRoute.of(context)!.settings.arguments as CategoryEntity;
    return Scaffold(
      appBar: AppBar(title: Text('Years'), centerTitle: true),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: category.years.map((year) {
              return InkWell(
                onTap: () {
                  bloc.add(GetMonthsEvent(id: '$year${category.id}'));
                  Navigator.of(context).pushNamed(AppRoutsName.monthView);
                },
                child: ShowYear(year: year),
              );
            }).toList(),
          ),
        ),
      ),
      floatingActionButton: OnAdd(
        onTap: (year) {
          bloc.add(AddYearEvent(year: year, id: category.id));
        },
      ),
    );
  }
}
