import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:technical_session/screens/home_screen/controller/home_screen_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../constants/colors.dart';
class HomeScreen extends StatelessWidget {
    HomeScreen({Key? key}) : super(key: key);
    final controller =Get.put(Homescreencontroller());

  get decoration => null;
  @override
  Widget build(BuildContext context) {

      return  Scaffold( //
        //body

appBar: AppBar(
     centerTitle:true,
  title: const Text('Home'),
  backgroundColor: kSecPrimaryColor,
),
        //bottomNavBar
        //floatActionbutton
        backgroundColor:kPrimaryColor,
        body: SingleChildScrollView(

          child: Column(

            children: [
              SizedBox(height: 10.h,)
,
            CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    height: Get.height / 2.2.h,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {

                    }),
                items: controller.homeAdsImages
                    .map((item) => Container(
                    clipBehavior: Clip.antiAlias,
                    width: MediaQuery.of(context).size.width - 20,
                    decoration: BoxDecoration(
                      border:
                      Border.all(color: mainColor, width: 2),
                      borderRadius: BorderRadius.circular(5),

                    ),
                    child: Image.asset(item,fit: BoxFit.cover,)))
                    .toList(),
              ),
              SizedBox(height: 10.h,width: 65.w,)
,


              Obx(() => AnimatedSmoothIndicator(
                activeIndex: controller.currentImageIndex.value,
                count: 3,
                effect: ExpandingDotsEffect(
                    dotHeight: 5,
                    dotWidth: 5,

                    activeDotColor: kSecPrimaryColor,
                    dotColor: kSecPrimaryColor),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,


                children: [
                  InkWell(
                    child: Container(
                      width: 150.w,
                 //  height: 100.h,

                      padding: EdgeInsets.only(top: 10.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                        color:kSecPrimaryColor,

                      ),

                      child: Column(
                        children: [
                          Image.asset('assets/images/shop_now.png',fit: BoxFit.fill,height: 120,width: 130,),
                          Text('order now'),
                          SizedBox(height: 13.h,)


                        ],
                      )
                    ),onTap: (){

                  },


                  ), InkWell(
                    child: Container(
                        width: 150.w,
                       // height: 200.h,
                      padding: EdgeInsets.only(top: 10.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: kSecPrimaryColor,
                          ),

                      child: Column(
                        children: [
                          Image.asset("assets/images/track_order.png",fit: BoxFit.fill,height: 120,width: 130,),
                            Text('track order'),
                          SizedBox(height: 13.h,
                         )



                        ],
                      )
                    ),onTap: (){

                  },
                  ),
                ],
              )




            ],
          ),

     //catch (e, s) {
    //print(s);
        ),
    );
  }
}
































