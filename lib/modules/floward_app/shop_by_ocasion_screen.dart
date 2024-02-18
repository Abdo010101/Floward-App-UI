import 'package:floward/shared/styles/assets_manager.dart';
import 'package:flutter/material.dart';

import '../../shared/component/component.dart';
import '../../shared/styles/colors.dart';

class ShopByOcassion extends StatelessWidget
{

  var searchField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon:Icon(Icons.arrow_back_ios_new) ,
        ),
        title: Container(
          margin: EdgeInsets.only(left: 50.0),
          child: Text(
            'Valentine\'s Day',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ) ,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(height: 12.0,),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  color: Colors.grey[300],
                  child: GridView.count(
                      crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 1,
                    childAspectRatio: 1/1.1,
                    children: List.generate
                      (myList.length,
                            (index) => buildGridItem(myList, index,context)),

                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGridItem( mylist,index,context)
  {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
         Stack(
           alignment: Alignment.topRight,
           children: [
             Image(
                 image: AssetImage('${mylist[index]}'),
               width: double.infinity,
               fit: BoxFit.cover,
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 width: 70.0,
                 color: Colors.red,
                 child: Center(
                   child: Text(
                     'PreOrder',
                     style: TextStyle(
                       color: Colors.white
                     ),
                   ),
                 ),
               ),
             ),
           ],
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
   ImageAsset.whatsNewImage,
  ImageAsset.whatsNewImage,
  ImageAsset.whatsNewImage,
  ImageAsset.whatsNewImage,
  ImageAsset.whatsNewImage,
  ImageAsset.whatsNewImage,
  ImageAsset.whatsNewImage,
  ImageAsset.whatsNewImage,
  ImageAsset.whatsNewImage,
  ImageAsset.whatsNewImage,
  ImageAsset.whatsNewImage,
  ImageAsset.whatsNewImage,



];