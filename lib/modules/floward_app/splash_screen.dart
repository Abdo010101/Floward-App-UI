import 'package:floward/shared/styles/colors.dart';
import 'package:flutter/material.dart';

import '../../layout/home_layout/floward_app.dart';
import '../../shared/styles/assets_manager.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

 bool animate= false;


 @override
  void initState() {
   startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Center(
            child: Stack(

              children:
              [
                AnimatedPositioned(
                  duration: Duration(milliseconds: 1600),
                  left:animate?128.0 : 80.0,
                  top: animate?220.0 : 90.0,
                  child: Image(
                      image: AssetImage('${ImageAsset.flowardImagSplach2}'),
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
               AnimatedPositioned(
                 duration: Duration(milliseconds: 1600),
                 left: animate ? 128.0: 90.0,
                 top: 380.0,
                 child: Text(
                   'FLOWARD ',
                   style: Theme.of(context).textTheme.headline4,
                 ),
               ),
                SizedBox(
                  height: 150.0,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0,top: 160.0),
                  child: Container(

                    child: SpinKitWanderingCubes(
                          color: AppColors.buttonColor,
                          size: 50.0,
                      ),
                  ),
                ),


              ],
            ),
          ),

        ),
    );

  }

  Future startAnimation() async
  {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      animate=true;
    });
     await Future.delayed(Duration(milliseconds: 2000));
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FlowardAppLayout()));
  }

}
