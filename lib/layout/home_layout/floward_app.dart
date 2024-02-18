
import 'package:floward/layout/home_layout/cubit/cubit.dart';
import 'package:floward/layout/home_layout/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/component/component.dart';


class FlowardAppLayout extends StatelessWidget
{
  const FlowardAppLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
     //var searchController = TextEditingController();

    return BlocProvider(
      create: (BuildContext context) => FlowardAppCubit(),
      child: BlocConsumer<FlowardAppCubit,FlowardAppStates>(
        listener: (context ,state)
        {
        },
        builder: (context,state)
        {
          var myCubit = FlowardAppCubit.get(context);
          return Scaffold(
            body: myCubit.myScreens[myCubit.currentIndex],
            bottomNavigationBar: LastAppSectionItem(myCubit),
          );
        },
      ),
    );
  }
}
