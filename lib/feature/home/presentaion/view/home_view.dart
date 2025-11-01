import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ouhda/core/routs/app_routs_name.dart';
import 'package:ouhda/feature/home/presentaion/manger/bloc/category_bloc.dart';
import 'package:ouhda/feature/home/presentaion/view/widgets/custom_add_item.dart';
import 'package:ouhda/feature/home/presentaion/view/widgets/custom_floating_action_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<CategoryBloc, CategoryState>(
          builder: (context, state) {
            if (state is CategorySuccess) {
              return Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: state.myCategories.map((category) {
                        return CustomAddItem(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              AppRoutsName.yearsView,
                              arguments: category,
                            );
                          },
                          category,
                        );
                      }).toList(),
                    ),
                  ),
                ],
              );
            }
            return SizedBox(child: Text('data'));
          },
        ),
        floatingActionButton: CustomFloatingActionButton(),
      ),
    );
  }
}
