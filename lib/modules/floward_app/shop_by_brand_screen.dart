import 'package:flutter/material.dart';

import '../../shared/component/component.dart';
import '../../shared/styles/assets_manager.dart';
import '../../shared/styles/colors.dart';

class ShopByBrand extends StatelessWidget
{

  var searchField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 90.0),
          child: Text(
            'L\'azurde',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children:
          [
            Row(
              children:
              [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      color: Colors.grey,
                      width: 300,
                      child:   defaultFormField(
                          style: TextStyle(
                            color: AppColors.primaryColor,
                          ),

                          controller: searchField,
                          label: 'Search...',
                          prifix: Icons.search,
                          type: TextInputType.text,
                          validate: (String value)
                          {
                            if(value.length == 0)
                            {
                              return 'you must write some thing .. ';
                            }
                          }
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.0,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    height: 70.0,
                    width: 55.0,
                    color: Colors.grey[300],
                    child: IconButton(

                      color: AppColors.buttonColor,
                      onPressed: ()
                      {

                      },
                      icon: Icon(
                        Icons.arrow_upward_outlined,
                        size: 35.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.0,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    height: 70.0,
                    width: 55.0,
                    color: Colors.grey[300],
                    child: IconButton(

                      color: AppColors.buttonColor,
                      onPressed: ()
                      {

                      },
                      icon: Icon(
                        Icons.menu_open_sharp,
                        size: 35.0,
                      ),
                    ),
                  ),
                )
              ],

            ),
            SizedBox(height: 10.0,),
            Expanded(
              child: CustomScrollView(
                slivers:
                [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    expandedHeight: 200.0,
                    flexibleSpace: FlexibleSpaceBar(
                      background:Image(
                        image: AssetImage('${ImageAsset.exploreImage}'),
                        fit: BoxFit.cover,
                      ),
                    ),

                  ),

                  //sliver item
                  SliverToBoxAdapter(
                    child:  Container(
                      height: 130.0,
                      width: double.infinity,
                      color: Colors.white70,

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context ,index)=>circleAvataritemForList(context),
                            separatorBuilder: (context,index)=>SizedBox(width: 10.0,),
                            itemCount: 10
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      height: 500.0,
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 4,
                        mainAxisSpacing: 1,
                        childAspectRatio: 1/1.1,
                        children: List.generate(
                            myList.length,
                                (index) => buildGridItem(myList,index,context)
                        ),
                      ),
                    ),

                  )
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }

  Widget circleAvataritemForList(context)=>Column(
    children:
    [
      CircleAvatar(
        radius: 40.0,
        backgroundImage: AssetImage('${ImageAsset.circluarAvatar}'),

      ),
      SizedBox(height: 10,),
      Text(
        'L\'azurda',
        style: Theme.of(context).textTheme.caption,
      ),
    ],
  );


  Widget buildGridItem( mylist,index,context)
  {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Image(
            image: AssetImage('${mylist[index]}'),
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Moko Belends | 12 Reds Roses',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.caption!.copyWith(
                      fontSize: 15.0
                  ),
                ),
                Text(
                  'EGY 1199',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.black87
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}


List<String> myList=
[
  ImageAsset.bestSellerImage,
  ImageAsset.bestSellerImage,
  ImageAsset.bestSellerImage, ImageAsset.bestSellerImage,
  ImageAsset.bestSellerImage,
  ImageAsset.bestSellerImage,
  ImageAsset.bestSellerImage,
  ImageAsset.bestSellerImage,
  ImageAsset.bestSellerImage,
  ImageAsset.bestSellerImage,
  ImageAsset.bestSellerImage,
  ImageAsset.bestSellerImage, ImageAsset.bestSellerImage,











];