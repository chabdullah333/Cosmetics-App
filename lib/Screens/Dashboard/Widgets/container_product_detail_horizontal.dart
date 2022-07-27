import 'package:daxno_tech_app/Utils/images.dart';
import 'package:flutter/material.dart';

import '../../../Utils/colors.dart';
import '../../../Utils/constant_text.dart';

class ContainerAllProducts extends StatelessWidget {
  const ContainerAllProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.187, //138
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: CustomColors.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.029,
              bottom: MediaQuery.of(context).size.height * 0.029,
              left: MediaQuery.of(context).size.width * 0.047,
            ), //21,21,17
            child: Container(
              width: MediaQuery.of(context).size.width * 0.288, //103
              height: MediaQuery.of(context).size.height,
              child: Image.asset(CustomImages.faceCleanerImage),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.029,
                    left: MediaQuery.of(context).size.width * 0.058), //21,21
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.054, //40
                      width: MediaQuery.of(context).size.width * 0.420, //150
                      child: Text(
                        "Fresh\nSoy Face Cleanser",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.047,
                          color: CustomColors.blackColor,
                        ),
                      ),
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
                      ],
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.006),
                    Text(
                      ConstantText.rs1500Text,
                      style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * 0.047, //17
                          color: CustomColors.blackColor),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
