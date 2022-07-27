import 'package:daxno_tech_app/Routes/app_pages.dart';
import 'package:daxno_tech_app/Screens/Wishlist/Controller/wishlist_controller.dart';
import 'package:daxno_tech_app/Screens/Wishlist/Widgets/row_relevant_products.dart';
import 'package:daxno_tech_app/Utils/colors.dart';
import 'package:daxno_tech_app/Utils/images.dart';
import 'package:daxno_tech_app/Utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Utils/constant_text.dart';

class WishList extends StatelessWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WishListController>(
      init: WishListController(),
      builder: (controller) {
        return Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: Style.backgroundImageBoxDecoration,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.086,
                      right: MediaQuery.of(context).size.width * 0.086,
                      top: MediaQuery.of(context).size.height *
                          0.034), //31,31,25
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: CustomColors.whiteColor,
                            ),
                          ),
                          SizedBox(
                            width:
                                MediaQuery.of(context).size.width * 0.028, //10
                          ),
                          Text(
                            ConstantText.apothogyText,
                            style: Style.whiteColorText.copyWith(
                              fontSize: MediaQuery.of(context).size.width *
                                  0.062, //26
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.orderPreviews);
                            },
                            child: Image.asset(CustomImages.shoppingCartImage),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.045, //33
                      ),
                      Image.asset(CustomImages.fragranceImage),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.014, //10
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ConstantText.doveText,
                                style: TextStyle(
                                  color: CustomColors.doveTextColor,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.044,
                                ),
                              ),
                              Text(
                                ConstantText.apothogyText,
                                style: Style.greenColorText.copyWith(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.067,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  if (controller.productCounter > 1) {
                                    controller.productCounter--;
                                  }
                                },
                                child: Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.052, //38
                                  width: MediaQuery.of(context).size.width *
                                      0.109, //39
                                  decoration: Style.minusCounterBoxDecoration,
                                  child: Center(
                                    child: Text(
                                      ConstantText.minusText,
                                      style: Style.whiteColorText.copyWith(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.067, //24
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width *
                                    0.044, //16
                              ),
                              Obx(
                                () => Text(
                                  controller.productCounter.value.toString(),
                                  style: TextStyle(
                                    color: CustomColors.whiteColor,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.053, //19
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width *
                                    0.042, //15
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.productCounter++;
                                },
                                child: Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.052, //38
                                  width: MediaQuery.of(context).size.width *
                                      0.109, //39
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: CustomColors.selectedItemsColor),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Center(
                                    child: Text(
                                      ConstantText.plusText,
                                      style: Style.whiteColorText.copyWith(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.067, //24
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.009, //6
                      ),
                      Row(
                        children: [
                          Image.asset(CustomImages.ratingStarImage),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.014),
                          Image.asset(CustomImages.ratingStarImage),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.014),
                          Image.asset(CustomImages.ratingStarImage),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.014),
                          Image.asset(CustomImages.ratingStarImage),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.014),
                          Image.asset(CustomImages.ratingStarImage),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.025),
                          Text(
                            ConstantText.fiveDot0Text,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.039,
                                color: CustomColors.doveTextColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.023, //17
                      ),
                      Text(
                        ConstantText.fragranceBottleDescriptionText,
                        style: TextStyle(
                            color: CustomColors.wishListProductDescriptionColor,
                            height: 1.7,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.036),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.036, //26
                      ),
                      const RowRelevantProducts(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.027, //20
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.068, //50
                        child: GridView.builder(
                            itemCount: controller.weightList.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 10,
                              childAspectRatio: 2,
                            ),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  controller.changeContainerColor(index);
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.280, //100
                                  height: MediaQuery.of(context).size.height *
                                      0.057, //42
                                  decoration: BoxDecoration(
                                      border: (controller.currentIndex == index)
                                          ? Border.all(
                                              color: CustomColors
                                                  .selectedItemsColor,
                                            )
                                          : Border.all(
                                              color: Colors.transparent,
                                            ),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Center(
                                    child: Text(
                                      controller.weightList[index],
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.033, //12
                                        fontWeight: FontWeight.w700,
                                        color: (controller.currentIndex ==
                                                index)
                                            ? CustomColors.selectedItemsColor
                                            : CustomColors.whiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.027, //20
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ConstantText.totalPriceText,
                                style: TextStyle(
                                    color: CustomColors.doveTextColor,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.036),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    0.006, //4
                              ),
                              Text(
                                ConstantText.seventeenDollarText,
                                style: TextStyle(
                                    color: CustomColors.greenColor,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.084, //30
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height *
                                    0.075, //55
                                width: MediaQuery.of(context).size.width *
                                    0.462, //165
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: CustomColors.greenColor,
                                ),
                                child: Center(
                                  child: Text(
                                    ConstantText.addToCartText,
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.039, //14
                                      color: CustomColors.whiteColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.054, //40
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
