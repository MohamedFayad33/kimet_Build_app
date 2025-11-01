import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ouhda/core/constant/app_assets.dart';
import 'package:ouhda/core/routs/app_routs_name.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    goHomeView();
  }

  void goHomeView() async {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(AppRoutsName.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Image.asset(AppAssets.logoSpash, fit: BoxFit.fill)),
        ],
      ),
    );
  }
}
