import 'package:flutter/material.dart';
import 'package:ouhda/core/routs/app_routs_name.dart';
import 'package:ouhda/feature/awhda/presentaion/view/awhda_view.dart';
import 'package:ouhda/feature/details/presentaion/view/details_view.dart';
import 'package:ouhda/feature/home/presentaion/view/home_view.dart';
import 'package:ouhda/feature/invoices/presentaion/view/invoices_view.dart';
import 'package:ouhda/feature/years/presintation/month_view.dart';
import 'package:ouhda/feature/splash/presentaion/view/splash_view.dart';
import 'package:ouhda/feature/years/presintation/years_view.dart';

abstract class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutsName.splash: (BuildContext context) => const SplashView(),

    AppRoutsName.home: (BuildContext context) => const HomeView(),

    AppRoutsName.yearsView: (BuildContext context) => const YearsView(),

    AppRoutsName.details: (BuildContext context) => const DetailsView(),

    AppRoutsName.invoices: (BuildContext context) => const InvoicesView(),

    AppRoutsName.awhda: (BuildContext context) => const AwhdaView(),

    AppRoutsName.monthView: (BuildContext context) => const MonthView(),
  };
}
