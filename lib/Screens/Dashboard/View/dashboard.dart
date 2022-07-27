import 'package:daxno_tech_app/Routes/app_pages.dart';
import 'package:daxno_tech_app/Screens/Dashboard/Widgets/container_product_detail_horizontal.dart';
import 'package:daxno_tech_app/Screens/Dashboard/Widgets/container_product_detail_vertical.dart';
import 'package:daxno_tech_app/Utils/colors.dart';
import 'package:daxno_tech_app/Utils/constant_text.dart';
import 'package:daxno_tech_app/Utils/images.dart';
import 'package:daxno_tech_app/Utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: Style.backgroundImageBoxDecoration,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.047,
                    right: MediaQuery.of(context).size.width * 0.047,
                    top: MediaQuery.of(context).size.height * 0.054,
                  ), //17,17,40
                  child: Row(
                    children: [
                      Text(
                        ConstantText.apothogyText,
                        style: TextStyle(
                          color: CustomColors.whiteColor,
                          fontSize:
                              MediaQuery.of(context).size.width * 0.072, //26
                        ),
                      ),
                      const Spacer(),
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: CustomColors.greenColor,
                        child: Icon(
                          Icons.search_outlined,
                          color: CustomColors.whiteColor,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.050, //18
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.orderPreviews);
                        },
                        child: Image.asset(CustomImages.shoppingCartImage),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.049, //36
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.067,
                  ), //24
                  child: Text(
                    ConstantText.productsText,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.075,
                        color: CustomColors.whiteColor), //27
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.022, //16
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ContainerProductDetailVertical(
                      image: CustomImages.oilImage,
                      productDescription:
                          ConstantText.drAndrewWeilForOriginText,
                      productPrice: ConstantText.rs1000Text,
                    ),
                    ContainerProductDetailVertical(
                      image: CustomImages.faceWashImage,
                      productDescription: ConstantText.nufaceByCarolCoreText,
                      productPrice: ConstantText.rs2000Text,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.070,
                      top: MediaQuery.of(context).size.height * 0.040,
                      right:
                          MediaQuery.of(context).size.width * 0.056), //25,29,20
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ConstantText.allProductsText,
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * 0.064, //23
                          color: CustomColors.whiteColor,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.022, //16
                      ),
                      const ContainerAllProducts(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.029, //21
                      ),
                      const ContainerAllProducts(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
