import 'package:daxno_tech_app/Screens/Select%20Filter/Controller/select_filter_controller.dart';
import 'package:daxno_tech_app/Utils/colors.dart';
import 'package:daxno_tech_app/Utils/constant_text.dart';
import 'package:daxno_tech_app/Utils/images.dart';
import 'package:daxno_tech_app/Utils/style.dart';
import 'package:daxno_tech_app/Widgets/App%20Bar/View/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectFilter extends StatelessWidget {
  SelectFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectFilterController>(
        init: SelectFilterController(),
        builder: (controller) {
          return Scaffold(
            appBar: RepeatedAppBar(
              appBarTitle: ConstantText.selectFilterText,
            ),
            body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: Style.backgroundImageBoxDecoration,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.059, //43
                    ),
                    Image.asset(
                      CustomImages.selectFilterUserImage,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.048, //35
                    ),
                    Text(
                      ConstantText.selectFilterText,
                      style: TextStyle(
                        fontSize:
                            MediaQuery.of(context).size.width * 0.084, //30
                        color: CustomColors.whiteColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.057, //42
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.17, //70
                      child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.filters.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 5,
                            childAspectRatio: 1.7,
                          ),
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                controller.changeFilterColor(index);
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: 60,
                                    height: MediaQuery.of(context).size.height *
                                        0.095, //70
                                    decoration: BoxDecoration(
                                      border: (controller.currentIndex == index)
                                          ? Border.all(
                                              color: CustomColors.whiteColor,
                                              width: 5,
                                            )
                                          : Border.all(
                                              color: Colors.transparent,
                                            ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Image.asset(
                                      CustomImages.selectFilterUserImage,
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.023, //17
                                  ),
                                  Text(
                                    controller.filters[index],
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.042, //15
                                      color: CustomColors.whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.057, //42
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.179,
                          right: MediaQuery.of(context).size.width *
                              0.179), //64,64
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.098, //72
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: CustomColors.greenColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text(
                            ConstantText.saveText,
                            style: TextStyle(
                              color: CustomColors.blackColor,
                              fontSize: MediaQuery.of(context).size.width *
                                  0.084, //30
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.030, //22
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
