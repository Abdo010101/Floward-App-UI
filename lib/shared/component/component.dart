
import 'package:flutter/material.dart';

import '../../layout/home_layout/cubit/cubit.dart';
import '../../modules/floward_app/shop_Bestsellers_screen.dart';
import '../../modules/floward_app/shop_by_brand_screen.dart';
import '../../modules/floward_app/shop_by_ocasion_screen.dart';
import '../../modules/floward_app/whats_new_screen.dart';
import '../styles/assets_manager.dart';
import '../styles/colors.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  Color? textColors = Colors.white,
  // if you want to chage the shape of text one is be upper case and antoerh is smallc case
  bool isUpper = true,
  required String text,
  required Function function,
  double ?raduis = 10.0 ,

}) => Container(
  height: 50.0,
  width: width,
  child: MaterialButton(
    onPressed:()
    {
      function();
    },
    child: Text(
      isUpper ? text.toUpperCase() : text,
      style: TextStyle(
        color: textColors,

        //fontWeight: FontWeight.bold,
      ),
    ),
  ),
  decoration: BoxDecoration(
    color: background,
    borderRadius: BorderRadius.circular(raduis!,),

  ),
);


Widget defaultTextButton({
  required Function function,
  required String text,
  Color? color,
}) =>TextButton(
    onPressed: ()
    {
      function();
    },
    child: Text(
        text.toUpperCase(),
      style: TextStyle(
        color: color
      ),
    )
);



Widget  defaultFormField({
  required TextEditingController controller,
  required String label ,
  required IconData prifix,
  required TextInputType type ,
  required Function validate,
  Function? onTap,
  Function? onChagne,
  bool isPassword = false,
  IconData? suffixIcon,
  TextStyle ?style,


}) =>  Container(
  color: Colors.white,
  child:   TextFormField(



    // this allow me to catch the data in the field and use it in any partion i want

    controller: controller,



    obscureText: isPassword,



    style:style,



    decoration:InputDecoration(



      //hintText: 'Email address',



      labelText: label,



      border: OutlineInputBorder(),



      prefix: Icon(



        prifix,



      ),



      suffix: Icon(suffixIcon),



    ) ,



    keyboardType: type,



    //this  anomnous fucntion give my the value in my hand forn the textformfiled



    // onFieldSubmitted: ,



    // this function retrun the value in texformfiled if any chage happen on it



    // onChanged: (String val)



    // {



    // print(val);



    // },



    validator: (s)



    {



      validate(s);



    },



    onTap: ()



    {



      onTap!();







    },



    onChanged: (s)



    {



      onChagne!(s);



    },



  ),
);

Widget FirstAppSectionItem(context , TextEditingController controller) => Container(
  width: double.infinity ,
  height: 160.0,
  color: AppColors.primaryColor ,
  child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children:
      [
        Row(
          children:
          [
            Icon(
              Icons.car_crash_outlined,
              size: 35.0,

            ),
            SizedBox(width: 10.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text(
                  'Deliver to Recipient in',
                  style: Theme.of(context).textTheme.caption?.copyWith(
                    fontSize: 16.0,
                  ),
                ),
                Row(
                  children:
                  [
                    Icon(
                      Icons.flag,
                      size: 35.0,
                    ),
                    SizedBox(width: 8.0,),
                    Text(
                      'Cairo',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: AppColors.bottomNavcolorIcon

                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],

        ),
        SizedBox(height: 10.0,),
        defaultFormField(
            style: TextStyle(
              color: AppColors.primaryColor,
            ),

            controller: controller,
            label: 'Search for any Flowers ..',
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
      ],
    ),
  ),

);

Widget LastAppSectionItem(FlowardAppCubit flowardAppCubit)=> Container(
  width:double.infinity,
  height: 90.0,
  child: BottomNavigationBar(
      currentIndex: flowardAppCubit.currentIndex ,
      onTap: (index)
      {
        flowardAppCubit.changeBottomNav(index);
      },
      items: flowardAppCubit.bottomNavList

  ),
);

Widget CircularAvatarItem(context ,count)=> Padding(
  padding: const EdgeInsets.only(left: 15.0,top: 10.0),
  child:   Container(

    height: 150.0,

    child:  ListView.separated(

      scrollDirection: Axis.horizontal,

      shrinkWrap: true,

      itemBuilder:(context,index)=> Column(

        children:

        [

          CircleAvatar(

            radius: 40.0,

            backgroundImage: AssetImage('${ImageAsset.circluarAvatar}'),

          ),

          Padding(

            padding: const EdgeInsets.only(left: 10.0),

            child: Container(

              width: 56.0,

              child: Text(

                'Happy BirthDay',

                maxLines: 2,

                overflow: TextOverflow.ellipsis,



              ),

            ),

          ),



        ],



      ),

      separatorBuilder: (context,index)=>SizedBox(width: 12.0,),

      itemCount: count,

    ),

  ),
);

Widget ItemForCard()=>Container(

  width: double.infinity,

  height: 200.0,

  child: InkWell(

    onTap: ()

    {



    },

    child: Card(

      margin: EdgeInsets.symmetric(horizontal: 17.0),

      clipBehavior: Clip.antiAliasWithSaveLayer,

      elevation: 10.0,

      child: Stack(



        alignment: Alignment.topLeft,

        children:

        [

          Image(

            image: AssetImage('${ImageAsset.imageCard}'),

            width: double.infinity,

            fit: BoxFit.cover,

          ),

          Padding(

            padding: const EdgeInsets.all(20.0),

            child: Text(

              'Hello FLowers! ',

              style: TextStyle(

                fontSize: 25.0,

                fontWeight: FontWeight.w500,

              ),

            ),



          ),

          Padding(

            padding: const EdgeInsets.only(left: 20.0,top: 130.0),

            child: defaultButton(

                background: AppColors.buttonColor,

                width: 130.0,

                text: 'Shop Now',

                function: ()

                {



                }

            ),

          ),

        ],

      ),

    ),

  ),

);
Widget SectionNameTag(String text)=> Padding(
  padding: const EdgeInsets.symmetric(horizontal: 12.0),
  child: Row(
    children:
    [
      Text(

        '${text} ',

        style: TextStyle(

          fontSize: 25.0,

          fontWeight: FontWeight.w500,

        ),

      ),
      Spacer(),
      defaultTextButton(
          color: AppColors.buttonColor,
          function: ()
          {
          },
          text: 'View All'
      ),

    ],
  ),
);
Widget itemExploreOurMagnificent()=>Container(

  width: double.infinity,

  height: 230.0,

  child: InkWell(

    onTap: ()

    {



    },

    child: Card(
      margin: EdgeInsets.symmetric(horizontal: 17.0),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 10.0,
      child: Stack(
        alignment: Alignment.topLeft,
        children:
        [
          Image(

            image: AssetImage('${ImageAsset.exploreImage}'),

            width: double.infinity,

            fit: BoxFit.cover,

          ),

          Padding(
            padding: const EdgeInsets.only(left: 10.0,top: 8.0),
            child: Container(
              width: 180.0,
              child: Text(
                'Explore our   magnificent blooms ',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          Padding(

            padding: const EdgeInsets.only(left: 20.0,top: 150.0),

            child: defaultButton(

                background: Colors.white,
                textColors: AppColors.buttonColor,

                width: 130.0,

                text: 'Shop Now',

                function: ()

                {



                }

            ),

          ),

        ],

      ),

    ),

  ),

);

Widget itemBestSellers(context)=>  InkWell(
  onTap: ()
  {
   navigateTo(context, ShopBestsellersScreen());
  },
  child:   Column(

    crossAxisAlignment: CrossAxisAlignment.start,

    children: [
      Padding(

        padding: const EdgeInsets.symmetric(horizontal: 12.0),

        child: Stack(

          alignment: Alignment.bottomCenter,

          children:

          [

            Container(

              width: 150.0,

              height: 150.0,

              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(5.0),

                  image: DecorationImage(

                      image: AssetImage('${ImageAsset.bestSellerImage}'),

                      fit: BoxFit.cover

                  )

              ),

            ),

            Container(

              width: 150.0,

              color: Colors.black45,

              child: Center(

                child: Text(

                  'hello there',

                  style: TextStyle(

                      color: Colors.white

                  ),

                ),

              ),

            ),

          ],

        ),

      ),

      SizedBox(height: 3.0,),

      Padding(

        padding: const EdgeInsets.only(left: 12.0),

        child: Container(

          width: 150.0,

          child: Text(

              'Perfume box ||'

          ),

        ),

      ),

      SizedBox(height: 3.0,),

      Padding(

        padding: const EdgeInsets.only(left: 12.0),

        child: Container(

          width: 150.0,

          child: Row(

            children:

            [

              Text(

                'Starting from ',

                style:Theme.of(context).textTheme.caption ,

              ),

              Expanded(

                child: Text(

                  'EGP 1570',

                  style: TextStyle(

                      fontWeight: FontWeight.bold

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
Widget itemWhatsNews(context)=>  InkWell(
  onTap: ()
  {
    navigateTo(context, WhatNewScreenItem());
  },
  child:   Column(

    crossAxisAlignment: CrossAxisAlignment.start,

    children: [
      Padding(

        padding: const EdgeInsets.symmetric(horizontal: 12.0),

        child: Stack(

          alignment: Alignment.bottomCenter,

          children:

          [

            Container(

              width: 150.0,

              height: 150.0,

              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(5.0),

                  image: DecorationImage(

                      image: AssetImage('${ImageAsset.shopbyBrand}'),

                      fit: BoxFit.cover

                  )

              ),

            ),

            // Container(
            //
            //   width: 150.0,
            //
            //   color: Colors.black45,
            //
            //   child: Center(
            //
            //     child: Text(
            //
            //       'hello there',
            //
            //       style: TextStyle(
            //
            //           color: Colors.white
            //
            //       ),
            //
            //     ),
            //
            //   ),
            //
            // ),

          ],

        ),

      ),

      SizedBox(height: 3.0,),

      Padding(

        padding: const EdgeInsets.only(left: 12.0),

        child: Container(

          width: 150.0,

          child: Text(

              'FLowers box'

          ),

        ),

      ),

      SizedBox(height: 3.0,),

      Padding(

        padding: const EdgeInsets.only(left: 12.0),

        child: Container(

          width: 150.0,

          child: Row(

            children:

            [


              Expanded(

                child: Text(

                  'EGP 1570',

                  style: TextStyle(

                      fontWeight: FontWeight.bold

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

Widget itemsWhatsNews(context)=>  InkWell(
  onTap: ()
  {
    navigateTo(context, WhatNewScreenItem());
  },
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:
    [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),

        child: Stack(
          alignment: Alignment.topRight,
          children:
          [

            Container(
              width: 150.0,
              height: 150.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: AssetImage('${ImageAsset.whatsNewImage}'),
                      fit: BoxFit.cover
                  )
              ),

            ),

            Padding(
              padding: const EdgeInsets.only(top: 8.0,right: 8.0),
              child: Container(
                width: 75.0,
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

      ),
      SizedBox(height: 3.0,),
      Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Container(
          width: 150.0,
          child: Text(
              '20 baby red flowers baby blues ',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,

          ),

        ),

      ),
      SizedBox(height: 3.0,),
      Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child:  Expanded(

          child: Text(

            'EGP 1570',

            style: TextStyle(

                fontWeight: FontWeight.bold

            ),

          ),

        ),

      ),

    ],
  ),
);

Widget itemShopByOcasion(context)=> InkWell(
  onTap: ()
  {
    navigateTo(context, ShopByOcassion());
  },
  child:   Stack(

    alignment: Alignment.topLeft,

    children:

    [
      Container(

        width: 135.0,

        height: 140.0,

        decoration: BoxDecoration(



            borderRadius: BorderRadius.circular(5.0),



            image: DecorationImage(



                image: AssetImage('${ImageAsset.shopOccasionImage}'),



                fit: BoxFit.cover



            )



        ),



      ),

      Padding(

        padding: const EdgeInsets.only(left: 8.0,top: 8.0),

        child: Container(



          width: 60.0,



          child: Text(



            'Happy Birthday',



            style: TextStyle(

                 fontWeight: FontWeight.w600,

                fontSize: 14.0,

                color: Colors.white



            ),



          ),



        ),

      ),

    ],

  ),
);
Widget designItemForDesigner(context)=>  InkWell(
  onTap: ()
  {

  },
  child:   Column(
    children:
    [
      Container(
        width: 140.0,
        height: 140.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            image: DecorationImage(
                image: AssetImage('${ImageAsset.desingerImage}'),
                fit: BoxFit.cover,

            )
        ),

      ),
       SizedBox(height: 5.0,),
      Container(
        width: 140.0,
        child: Center(
          child: Text(
            'Ingy Elengbawy',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.caption?.copyWith(
              fontSize: 13.0
            ),

          ),
        ),

      ),


    ],

  ),
);
Widget itemShopByBrand(context)=>  InkWell(
  onTap: ()
  {
   navigateTo(context, ShopByBrand());
  },
  child:   Column(
    children: [
      Container(
        width: 140.0,
        height: 145.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            image: DecorationImage(
                image: AssetImage('${ImageAsset.shopbyBrand}'),
                fit: BoxFit.cover
            )
        ),

      ),
    ],
  ),
);



void navigateTo(context ,Widget widget)
{
  Navigator.push(context, MaterialPageRoute(builder:(context)=> widget));
}
void NaviageAndFinish(context , widget) => Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder:(context)=> widget),
      (route) => false,
);