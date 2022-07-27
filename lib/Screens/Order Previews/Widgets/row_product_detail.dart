import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utils/colors.dart';
import '../../../Utils/constant_text.dart';
import '../../../Utils/style.dart';

class RowProductDetail extends StatelessWidget {
  RowProductDetail({
    Key? key,
    required this.productWeight,
    required this.productPrice,
    required this.productQuantity,
    required this.onTapAdd,
    required this.onTapRemove,
    //required this.child,
  }) : super(key: key);
  String productWeight;
  String productPrice;
  String productQuantity;
  void Function() onTapAdd;
  void Function() onTapRemove;
  //Widget child;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.129, //95
              width: MediaQuery.of(context).size.width * 0.266, //95
              child: Image.asset("Assets/Images/fragnance.png"),
            ),
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.056, //20
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ConstantText.apothogyText,
              style: Style.whiteColorText.copyWith(
                fontSize: MediaQuery.of(context).size.width * 0.039, //14
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.014, //10
            ),
            Text(
              productWeight,
              style: Style.whiteColorText.copyWith(
                fontSize: MediaQuery.of(context).size.width * 0.039, //14
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.014, //10
            ),
            Text(
              productPrice,
              style: Style.whiteColorText.copyWith(
                fontSize: MediaQuery.of(context).size.width * 0.039, //14
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.113, //83
              width: MediaQuery.of(context).size.width * 0.089, //32
              decoration: BoxDecoration(
                color: CustomColors.counterContainerColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: onTapAdd,
                    child: const Icon(
                      Icons.add,
                      color: CustomColors.whiteColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.008, //3
                      right: MediaQuery.of(context).size.width * 0.008, //3
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.033, //24
                      width: MediaQuery.of(context).size.width,
                      color: CustomColors.counterNumberColor,
                      child: FittedBox(
                        child: Text(
                          productQuantity,
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * 0.039, //14
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: onTapRemove,
                    child: const Icon(
                      Icons.remove,
                      color: CustomColors.whiteColor,
                    ),
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
