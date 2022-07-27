import 'package:daxno_tech_app/Screens/Order%20Previews/Controller/order_previews_controller.dart';
import 'package:daxno_tech_app/Screens/Order%20Previews/Widgets/row_product_detail.dart';
import 'package:daxno_tech_app/Screens/Order%20Previews/Widgets/row_shippingFee_totalPayment.dart';
import 'package:daxno_tech_app/Utils/colors.dart';
import 'package:daxno_tech_app/Utils/constant_text.dart';
import 'package:daxno_tech_app/Widgets/App%20Bar/View/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Utils/style.dart';

class OrderPreviews extends StatelessWidget {
  const OrderPreviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderPreviewsController>(
        init: OrderPreviewsController(),
        builder: (controller) {
          return Scaffold(
            appBar: RepeatedAppBar(
              appBarTitle: ConstantText.orderPreviewsText,
            ),
            body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: Style.backgroundImageBoxDecoration,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.084, //30
                    right: MediaQuery.of(context).size.width * 0.070, //25
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.020, //14
                      ),
                      Obx(
                        () => RowProductDetail(
                          productWeight: ConstantText.oneKgText,
                          productPrice: ConstantText.oneUsdTText,
                          productQuantity:
                              controller.firstProductQuantity.value.toString(),
                          onTapAdd: () {
                            controller.firstProductQuantity.value++;
                          },
                          onTapRemove: () {
                            if (controller.firstProductQuantity > 0) {
                              controller.firstProductQuantity--;
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.020, //14
                      ),
                      Obx(
                        () => RowProductDetail(
                          productWeight: ConstantText.oneKgText,
                          productPrice: ConstantText.oneDot49UsdTText,
                          productQuantity:
                              controller.secondProductQuantity.value.toString(),
                          onTapAdd: () {
                            controller.secondProductQuantity.value++;
                          },
                          onTapRemove: () {
                            if (controller.secondProductQuantity > 0) {
                              controller.secondProductQuantity--;
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.072, //53
                      ),
                      const Divider(
                        color: CustomColors.whiteColor,
                        thickness: 2,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.064, //47
                      ),
                      ShippingFeeAndTotalPayment(
                        text: ConstantText.shippingFeeText,
                        price: ConstantText.zeroPoint59Text,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.023, //17
                      ),
                      ShippingFeeAndTotalPayment(
                        text: ConstantText.totalPaymentText,
                        price: ConstantText.twoDot98Text,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.067, //49
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.040, //29
                        width: MediaQuery.of(context).size.width,
                        color: CustomColors.locationContainerColor
                            .withOpacity(0.8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: CustomColors.whiteColor,
                            ),
                            Text(
                              ConstantText.pleaseAddYourShippingAddressText,
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    0.044, //16
                                color: CustomColors.whiteColor,
                              ),
                            ),
                            const Icon(
                              Icons.double_arrow_outlined,
                              color: CustomColors.whiteColor,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.081, //60
                      ),
                      Text.rich(
                        TextSpan(
                          text: ConstantText.yourPersonalDataWillBeUsedText,
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * 0.028, //10
                            color: CustomColors.whiteColor,
                          ),
                          children: [
                            TextSpan(
                              text: ConstantText.privacyPolicyText,
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    0.028, //10
                                color:
                                    CustomColors.darkBlueColor.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.048, //35
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.098,
                        //72
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.070, //25
                          right: MediaQuery.of(context).size.width * 0.028, //10
                        ),
                        decoration: BoxDecoration(
                          color: CustomColors.greenColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text(
                            ConstantText.placeOrderText,
                            style: TextStyle(
                              color: CustomColors.blackColor,
                              fontSize: MediaQuery.of(context).size.width *
                                  0.084, //30
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.034, //25
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
