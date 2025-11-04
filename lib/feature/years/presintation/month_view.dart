import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ouhda/feature/years/domin/entities/month_entity.dart';
import 'package:ouhda/feature/years/presintation/manger/bloc/year_bloc.dart';
import 'package:ouhda/feature/years/presintation/widget/show_year.dart';

class MonthView extends StatelessWidget {
  const MonthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('months'), centerTitle: true),
      body: YearBodyView(),
    );
  }
}

class YearBodyView extends StatelessWidget {
  const YearBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    List<MonthEntity> months = BlocProvider.of<YearBloc>(context).myMonth;
    return SingleChildScrollView(
      child: Column(
        children: months.map((month) {
          return ShowYear(year: month.id.toString());
        }).toList(),
      ),
    );
  }
}
