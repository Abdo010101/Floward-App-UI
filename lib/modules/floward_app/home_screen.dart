import 'package:floward/layout/home_layout/cubit/cubit.dart';
import 'package:floward/layout/home_layout/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/component/component.dart';

class HomeScreen extends StatelessWidget
{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    var searchController = TextEditingController();
    return BlocConsumer<FlowardAppCubit,FlowardAppStates>(
      listener: (context ,state){},
      builder: (context,state)
      {
        return SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                FirstAppSectionItem(context, searchController),
                CircularAvatarItem(context,10),
                ItemForCard(),
                // this section for first listview
                SizedBox(height: 10.0,),
                SectionNameTag('Bestsellers'),
                Container(
                  height: 200.0,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context,index)=>itemBestSellers(context),
                      separatorBuilder: (context,index)=>SizedBox(width: 3.0,),
                      itemCount: 10
                  ),
                ),
               // this section for second listView as same
                SectionNameTag('What\'s News'),
                Container(
                  height: 200.0,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context,index)=>itemWhatsNews(context),
                      separatorBuilder: (context,index)=>SizedBox(width: 3.0,),
                      itemCount: 10
                  ),
                ),
                SizedBox(height: 13.0,),
                ////////////////////////////
                itemExploreOurMagnificent(),
                /////////////////////////////
                SizedBox(height: 10.0,),
                SectionNameTag('Shop by Occasion'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(

                    height: 140.0,
                    width: double.infinity,
                    child: ListView.separated(
                      shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder:(context, index)=> itemShopByOcasion(context),
                        separatorBuilder: (context,index)=>SizedBox(width: 18.0,),
                        itemCount: 6
                    ),
                  ),
                ),
                //////////////////////////////
                SizedBox(height: 8.0,),
                SectionNameTag('Shop by brand'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(

                    height: 150.0,
                    width: double.infinity,
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder:(context, index)=> itemShopByBrand(context),
                        separatorBuilder: (context,index)=>SizedBox(width: 10.0,),
                        itemCount: 6
                    ),
                  ),
                ),
                //////////////////////////////////
                SizedBox(height: 8.0,),
                SectionNameTag('Our Designers '),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(

                    height: 170.0,
                    width: double.infinity,
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder:(context, index)=> designItemForDesigner(context),
                        separatorBuilder: (context,index)=>SizedBox(width: 10.0,),
                        itemCount: 6
                    ),
                  ),
                ),


              ],
            ),
          ),
        );
      },

    );
  }
}
