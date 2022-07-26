import 'package:flutter/material.dart';

import '../../../Utils/colors.dart';

class ShippingFeeAndTotalPayment extends StatelessWidget {
  ShippingFeeAndTotalPayment(
      {Key? key, required this.text, required this.price})
      : super(key: key);
  String text;
  String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 11, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: CustomColors.whiteColor,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text.rich(
            TextSpan(
              text: price,
              style: TextStyle(
                fontSize: 20,
                color: CustomColors.whiteColor,
              ),
              children: [
                TextSpan(
                  text: "Usdt",
                  style: TextStyle(
                    fontSize: 10,
                    color: CustomColors.whiteColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
