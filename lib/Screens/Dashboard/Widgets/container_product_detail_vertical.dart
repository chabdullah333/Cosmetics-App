import 'package:daxno_tech_app/Utils/images.dart';
import 'package:flutter/material.dart';
import '../../../Utils/colors.dart';

class ContainerProductDetailVertical extends StatelessWidget {
  ContainerProductDetailVertical(
      {Key? key,
      required this.image,
      required this.productDescription,
      required this.productPrice})
      : super(key: key);
  String image;
  String productDescription;
  String productPrice;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.380, //281
      width: MediaQuery.of(context).size.width * 0.436, //170
      child: Card(
        color: CustomColors.cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.050,
            right: MediaQuery.of(context).size.width * 0.050,
            top: MediaQuery.of(context).size.height * 0.025,
          ), //18,18,18
          child: Column(
            children: [
              Image.asset(image),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.021, //15
              ),
              Text(
                productDescription,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.047, //17
                    color: CustomColors.blackColor),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.010,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(CustomImages.ratingStarImage),
                  Image.asset(CustomImages.ratingStarImage),
                  Image.asset(CustomImages.ratingStarImage),
                  Image.asset(CustomImages.ratingStarImage),
                  Image.asset(CustomImages.ratingStarImage),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.010,
              ),
              Text(
                productPrice,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.047,
                    color: CustomColors.blackColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
