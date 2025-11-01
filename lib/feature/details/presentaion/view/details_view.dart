import 'package:flutter/material.dart';
import 'package:ouhda/core/routs/app_routs_name.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutsName.invoices);
              },
              child: Card(
                color: Colors.red,
                child: ListTile(
                  title: Text(
                    'Invoices ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutsName.awhda);
              },
              child: Card(
                color: Colors.red,
                child: ListTile(
                  title: Text(
                    'Al-Awhda',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
