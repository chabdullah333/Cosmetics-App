import 'package:daxno_tech_app/Screens/Order%20Previews/Widgets/row_product_detail.dart';
import 'package:daxno_tech_app/Screens/Order%20Previews/Widgets/row_shippingFee_totalPayment.dart';
import 'package:daxno_tech_app/Utils/colors.dart';
import 'package:daxno_tech_app/Utils/constant_text.dart';
import 'package:daxno_tech_app/Widgets/App%20Bar/View/app_bar.dart';
import 'package:flutter/material.dart';

import '../../../Utils/style.dart';

class OrderPreviews extends StatelessWidget {
  const OrderPreviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RepeatedAppBar(
        appBarTitle: "Order Previews",
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: Style.backgroundImageBoxDecoration,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 30, right: 25),
            child: Column(
              children: [
                SizedBox(
                  height: 14,
                ),
                RowProductDetail(
                  productWeight: "1 kg",
                  productPrice: "1 usdt",
                  productQuantity: "1",
                ),
                SizedBox(
                  height: 14,
                ),
                RowProductDetail(
                  productWeight: "1 kg",
                  productPrice: "1.49 usdt",
                  productQuantity: "1",
                ),
                SizedBox(
                  height: 53,
                ),
                Divider(
                  color: CustomColors.whiteColor,
                  thickness: 2,
                ),
                SizedBox(
                  height: 47,
                ),
                ShippingFeeAndTotalPayment(
                  text: "Shipping Fee",
                  price: "0.59 ",
                ),
                SizedBox(
                  height: 17,
                ),
                ShippingFeeAndTotalPayment(
                  text: "Total Payment",
                  price: "2.98 ",
                ),
                SizedBox(
                  height: 49,
                ),
                Container(
                  height: 29,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xffA5A5A5).withOpacity(0.8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: CustomColors.whiteColor,
                      ),
                      Text(
                        "Please add your shipping address",
                        style: TextStyle(
                          fontSize: 16,
                          color: CustomColors.whiteColor,
                        ),
                      ),
                      Icon(
                        Icons.double_arrow_outlined,
                        color: CustomColors.whiteColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Text.rich(
                  TextSpan(
                    text:
                        "Your personal data will be used only to process your order. For more details, please see ",
                    style: TextStyle(
                      fontSize: 10,
                      color: CustomColors.whiteColor,
                    ),
                    children: [
                      TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xff2B00FF).withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.098, //72
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 25, right: 10),
                  decoration: BoxDecoration(
                    color: CustomColors.greenColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      "Place Order",
                      style: TextStyle(
                        color: CustomColors.blackColor,
                        fontSize:
                            MediaQuery.of(context).size.width * 0.084, //30
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
