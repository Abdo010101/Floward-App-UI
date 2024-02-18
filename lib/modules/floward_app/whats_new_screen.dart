import 'package:floward/shared/styles/colors.dart';
import 'package:flutter/material.dart';

import '../../shared/component/component.dart';
import '../../shared/styles/assets_manager.dart';

class WhatNewScreenItem extends StatelessWidget
{

  const WhatNewScreenItem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: 80.0,
        width: double.infinity,
        color: Colors.grey[300],
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0,bottom: 12.0,left: 30.0),
          child: Row(
            children:
            [
             Padding(
               padding: const EdgeInsets.only(top: 8.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children:
                 [
                   Text(
                     'EGP 1570',
                     style: Theme.of(context).textTheme.bodyLarge,
                   ),
                   Text(
                     'VAT include',
                     style: Theme.of(context).textTheme.caption?.copyWith(

                     ),
                   ),
                 ],
               ),
             ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: defaultButton(
                  background: AppColors.buttonColor,
                  width: 160.0,
                    text: 'Add To Cart',
                    function: ()
                    {

                    }
                ),
              ),
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        slivers:
        [
          //sliver app bar
          SliverAppBar(
            actions:
            [

              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: CircleAvatar(
                  child: Icon(
                    Icons.drive_folder_upload,
                    color: Colors.indigo,
                    size: 40.0,
                  ),
                  radius: 28.0,
                  backgroundColor: Colors.white,
                ),
              ),
              SizedBox(width: 18.0,),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: CircleAvatar(

                  child: Icon(
                      Icons.favorite,
                    size: 36.0,
                    color: Colors.indigo,
                  ),
                  radius: 28.0,
                  backgroundColor: Colors.white,
                ),
              ),
              SizedBox(width: 12.0,),

            ],
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              background:  Container(
                height: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('${ImageAsset.whatsNewImage}'),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ),
          ),
          //sliveritems
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start ,
                children:
                [
                  Row(
                   children:
                   [
                     Expanded(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children:
                         [
                           Text(
                             'Purple Monstera',
                             style: Theme.of(context).textTheme.headline5?.copyWith(
                                 color: Colors.black
                             ),
                           ),
                           SizedBox(height: 14.0,),
                           Text(
                             'Sku FCS104',
                             style: Theme.of(context).textTheme.caption,
                           ),

                         ],
                       ),
                     ),
                     Column(
                       children:
                       [
                         Container(
                           width: 100.0,
                           height: 100.0,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             image: DecorationImage(
                               image: AssetImage('${ImageAsset.shopbyBrand}'),
                               fit: BoxFit.cover
                             )
                           ),
                         ),
                         Text(
                           'Floward',
                           style: Theme.of(context).textTheme.caption,
                         ),
                       ],
                     ),

                   ],
                 ),
                  SizedBox(height: 10.0,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      height: 50,
                      color: Colors.deepOrangeAccent[100],
                      child: Center(
                        child: Text(
                          'Express delivery : order it now and get it in 1 houre !',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.caption?.copyWith(
                            color: Colors.yellow,
                            fontSize: 15
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.expand_circle_down,
                      color: AppColors.bottomNavcolorIcon,),
                      SizedBox(width: 6.0,),
                      Expanded(
                        child: Container(
                          height: 50,
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              'Disclaimer : Colors may vay depending on the season ',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.caption?.copyWith(
                                  color: AppColors.buttonColor,
                                  fontSize: 15
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      width: double.infinity,
                      height: 235.0,
                      color: Colors.grey[100],
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0,right: 10,top: 20.0,bottom: 10),
                        child: Column(
                          children:
                          [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                              [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:CrossAxisAlignment.start,
                                    children:
                                    [
                                      Text(
                                        'Complete our orde now and earn 1377 points, added to you account',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,

                                      ),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      Text(
                                        'Learn More',
                                        style: Theme.of(context).textTheme.caption?.copyWith(
                                          color: AppColors.buttonColor
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Image(
                                    width: 70.0,
                                      height: 30.0,
                                      image: AssetImage('${ImageAsset.dollarImage}'),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 13.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                              [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:CrossAxisAlignment.start,
                                    children:
                                    [
                                      Text(
                                        'pay in installments with valU',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,

                                      ),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      Text(
                                        'Learn More',
                                        style: Theme.of(context).textTheme.caption?.copyWith(
                                            color: AppColors.buttonColor
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Image(
                                    width: 70.0,
                                    height: 30.0,
                                    image: AssetImage('${ImageAsset.tabbyImage}'),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 13.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                              [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:CrossAxisAlignment.start,
                                    children:
                                    [
                                      Text(
                                        'or 4 interests-free payments of EGY 392.50',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,

                                      ),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      Text(
                                        'Learn More',
                                        style: Theme.of(context).textTheme.caption?.copyWith(
                                            color: AppColors.buttonColor
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Image(
                                    width: 70.0,
                                    height: 30.0,
                                    image: AssetImage('${ImageAsset.valueImage}'),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 17.0,
                            ),
                            Container(
                              height: 1,
                              width: double.infinity,
                              color: Colors.grey[300],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 300,
                      child: Text(
                        'Let the flowers speak for you and gift them this gorgeous arrangement of 25 Purple Roses , and 2 Green Mostera made with love and bundled with care by our florist',
                        style: Theme.of(context).textTheme.caption?.copyWith(
                           fontSize: 16.0,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),

                  
                ],
              ),
            ),
          ),




        ],
      ),

    );
  }
}
