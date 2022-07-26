import 'package:daxno_tech_app/Utils/colors.dart';
import 'package:daxno_tech_app/Utils/style.dart';
import 'package:flutter/material.dart';

import '../../../Utils/constant_text.dart';

class WishList extends StatelessWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  top: MediaQuery.of(context).size.height * 0.034), //31,31,25
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_back_ios,
                        color: CustomColors.whiteColor,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.028, //10
                      ),
                      Text(
                        ConstantText.apothogyText,
                        style: TextStyle(
                          color: CustomColors.whiteColor,
                          fontSize:
                              MediaQuery.of(context).size.width * 0.062, //26
                        ),
                      ),
                      const Spacer(),
                      Image.asset("Assets/Images/shopping-cart.png"),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.045, //33
                  ),
                  Image.asset("Assets/Images/fragnance.png"),
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
                            style: TextStyle(
                                color: CustomColors.greenColor,
                                fontSize: MediaQuery.of(context).size.width *
                                    0.067, //24
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height:
                                MediaQuery.of(context).size.height * 0.052, //38
                            width:
                                MediaQuery.of(context).size.width * 0.109, //39
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: CustomColors.doveTextColor),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: Text(
                                "-",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.067, //24
                                    color: CustomColors.whiteColor),
                              ),
                            ),
                          ),
                          SizedBox(
                            width:
                                MediaQuery.of(context).size.width * 0.044, //16
                          ),
                          Text(
                            "2",
                            style: TextStyle(
                                color: CustomColors.whiteColor,
                                fontSize: MediaQuery.of(context).size.width *
                                    0.053, //19
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width:
                                MediaQuery.of(context).size.width * 0.042, //15
                          ),
                          Container(
                            height:
                                MediaQuery.of(context).size.height * 0.052, //38
                            width:
                                MediaQuery.of(context).size.width * 0.109, //39
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: CustomColors.selectedItemsColor),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: Text(
                                "+",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.067, //24
                                    color: CustomColors.whiteColor),
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
                      Image.asset("Assets/Images/star.png"),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.014),
                      Image.asset("Assets/Images/star.png"),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.014),
                      Image.asset("Assets/Images/star.png"),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.014),
                      Image.asset("Assets/Images/star.png"),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.014),
                      Image.asset("Assets/Images/star.png"),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.025),
                      Text(
                        "5.0",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.039,
                            color: CustomColors.doveTextColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.023, //17
                  ),
                  Text(
                    "A daydream of spring. Get lost in florals with notes of golden daffodil, airy honeysuckle and orange blossom. Flourish with matching Fragrance Mist.",
                    style: TextStyle(
                        color: CustomColors.wishListProductDescriptionColor,
                        height: 1.7,
                        fontSize: MediaQuery.of(context).size.width * 0.036),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.036, //26
                  ),
                  Row(
                    children: [
                      Image.asset("Assets/Images/cosmeticBottleGreen.png"),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.051),
                      Image.asset("Assets/Images/cosmeticBottlePink.png"),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.028),
                      Image.asset("Assets/Images/cosmeticBottleBlue.png"),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.028),
                      Image.asset("Assets/Images/cosmeticBottleYellow.png"),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.027, //20
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.280, //100
                        height: MediaQuery.of(context).size.height * 0.057, //42
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: CustomColors.selectedItemsColor),
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                          child: Text(
                            "50ml",
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    0.033, //12
                                fontWeight: FontWeight.w700,
                                color: CustomColors.selectedItemsColor),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "100ml",
                          style: TextStyle(
                            color: CustomColors.whiteColor,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.033, //12
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "200ml",
                          style: TextStyle(
                            color: CustomColors.whiteColor,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.033, //12
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
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
                            "Total Price",
                            style: TextStyle(
                                color: CustomColors.doveTextColor,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.036),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 0.006, //4
                          ),
                          Text(
                            r'$17.99',
                            style: TextStyle(
                                color: CustomColors.greenColor,
                                fontSize: MediaQuery.of(context).size.width *
                                    0.084, //30
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height:
                                MediaQuery.of(context).size.height * 0.075, //55
                            width:
                                MediaQuery.of(context).size.width * 0.462, //165
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: CustomColors.greenColor,
                            ),
                            child: Center(
                              child: Text(
                                "Add to cart",
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width *
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
  }
}
