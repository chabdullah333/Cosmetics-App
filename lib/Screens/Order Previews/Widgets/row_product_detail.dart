import 'package:flutter/material.dart';

import '../../../Utils/colors.dart';
import '../../../Utils/constant_text.dart';

class RowProductDetail extends StatelessWidget {
  RowProductDetail(
      {Key? key,
      required this.productWeight,
      required this.productPrice,
      required this.productQuantity})
      : super(key: key);
  String productWeight;
  String productPrice;
  String productQuantity;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: 95,
              width: 95,
              child: Image.asset("Assets/Images/fragnance.png"),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ConstantText.apothogyText,
              style: TextStyle(color: CustomColors.whiteColor, fontSize: 14),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              productWeight,
              style: TextStyle(color: CustomColors.whiteColor, fontSize: 14),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              productPrice,
              style: TextStyle(color: CustomColors.whiteColor, fontSize: 14),
            ),
          ],
        ),
        Spacer(),
        Column(
          children: [
            Container(
              height: 83,
              width: 32,
              decoration: BoxDecoration(
                color: Color(0xFFD0D0D0).withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.add,
                    color: CustomColors.whiteColor,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3, right: 3),
                    child: Container(
                      height: 24,
                      width: MediaQuery.of(context).size.width,
                      color: Color(0xffBFBFBF),
                      child: FittedBox(
                        child: Text(
                          productQuantity,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.remove,
                    color: CustomColors.whiteColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
