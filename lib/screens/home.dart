import 'package:flutter/material.dart';
import 'package:spending_tracker/constants/constants.dart';
import 'package:spending_tracker/theme/app_colors.dart';
import 'package:spending_tracker/utils/size_config.dart';
import 'package:date_time_format/date_time_format.dart';
import 'package:spending_tracker/widget/buy_card.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String date;
  late int number;
  late bool chosen;

  @override
  void initState() {
    super.initState();
    date = DateTime.now().format('M j');
    number = 0;
    chosen = true;
  }

  void getDate() {
    setState(() {
      date = DateTime.now().add(Duration(days: number)).format('M j');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Positioned(
          top: Constant.top,
          left: Constant.indentation,
          child: Text(
            'Home',
            style: TextStyle(
              fontSize: SizeConfig.textMultiplier! * 6,
              fontWeight: FontWeight.w700,
              color: AppColors.secondaryColor,
            ),
          ),
        ),
        Positioned(
          top: Constant.top + 20,
          right: Constant.indentation,
          child: Icon(
            Icons.notifications_none,
            size: SizeConfig.heightMultiplier! * 4,
          ),
        ),
        Positioned(
          top: Constant.top + 20,
          right: Constant.indentation + 3,
          child: Icon(
            Icons.radio_button_on_outlined,
            color: Colors.red,
            size: SizeConfig.heightMultiplier! * 1,
          ),
        ),
        Positioned(
          top: SizeConfig.heightMultiplier! * 13,
          right: Constant.indentation,
          left: Constant.indentation,
          child: Container(
            height: SizeConfig.heightMultiplier! * 7,
            width: SizeConfig.widthMultiplier! * 100,
            decoration: BoxDecoration(
              color: AppColors.thirdColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  20,
                ),
              ),
            ),
            child: TextFormField(
              cursorColor: AppColors.primaryColor,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: const EdgeInsets.only(
                    left: 15, bottom: 11, top: 11, right: 15),
                hintText: "Search",
                hintStyle: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: SizeConfig.textMultiplier! * 3,
                    fontWeight: FontWeight.w700),
                prefixIcon: Icon(
                  Icons.search_outlined,
                  size: SizeConfig.heightMultiplier! * 4,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: SizeConfig.heightMultiplier! * 22,
          left: Constant.indentation,
          child: Row(
            children: [
              Text(
                'Expenses on',
                style: TextStyle(
                  fontSize: SizeConfig.textMultiplier! * 4,
                  fontWeight: FontWeight.w700,
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier! * 7,
              ),
              GestureDetector(
                onTap: () {
                  number--;
                  getDate();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  size: SizeConfig.heightMultiplier! * 3,
                  color: AppColors.primaryColor,
                ),
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier! * 3,
              ),
              Text(
                date,
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: SizeConfig.textMultiplier! * 4,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier! * 3,
              ),
              GestureDetector(
                onTap: () {
                  number++;
                  getDate();
                },
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: SizeConfig.heightMultiplier! * 3,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: SizeConfig.heightMultiplier! * 40,
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '\$12,000',
                  style: TextStyle(
                    fontSize: SizeConfig.textMultiplier! * 3.5,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier! * 2,
                ),
                Text(
                  'Of all incomes \$16,000',
                  style: TextStyle(
                    fontSize: SizeConfig.textMultiplier! * 2.5,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: SizeConfig.heightMultiplier! * 30,
          child: CircularStepProgressIndicator(
            totalSteps: 100,
            currentStep: 75,
            stepSize: 10,
            selectedColor: AppColors.primaryColor,
            unselectedColor: AppColors.thirdColor,
            padding: 0,
            width: SizeConfig.heightMultiplier! * 33,
            height: SizeConfig.heightMultiplier! * 33,
            selectedStepSize: 15,
            roundedCap: (_, __) => true,
          ),
        ),
        Positioned(
          top: SizeConfig.heightMultiplier! * 65,
          right: 0,
          left: 0,
          bottom: 0,
          child: Container(
            padding: EdgeInsets.only(
              left: SizeConfig.widthMultiplier! * 6,
              right: SizeConfig.widthMultiplier! * 6,
              top: SizeConfig.widthMultiplier! * 6,
            ),
            width: SizeConfig.widthMultiplier! * 100,
            color: AppColors.thirdColor.withOpacity(0.6),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Filter',
                    style: TextStyle(
                      fontSize: SizeConfig.textMultiplier! * 4,
                      fontWeight: FontWeight.w700,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier! * 2,
                  ),
                  Row(
                    children: [
                      Transform.rotate(
                        angle: 1.57,
                        child: Icon(
                          Icons.tune,
                          color: AppColors.secondaryColor,
                          size: SizeConfig.heightMultiplier! * 4,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier! * 3,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            chosen = !chosen;
                          });
                        },
                        child: Container(
                          height: SizeConfig.heightMultiplier! * 4,
                          width: SizeConfig.widthMultiplier! * 30,
                          decoration: BoxDecoration(
                            color: chosen
                                ? AppColors.thirdColor
                                : Colors.grey.withOpacity(0.4),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Expenses',
                              style: TextStyle(
                                fontSize: SizeConfig.textMultiplier! * 2.5,
                                fontWeight: FontWeight.w700,
                                color: chosen
                                    ? AppColors.primaryColor
                                    : Colors.black.withOpacity(0.4),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier! * 3,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            chosen = !chosen;
                          });
                        },
                        child: Container(
                          height: SizeConfig.heightMultiplier! * 4,
                          width: SizeConfig.widthMultiplier! * 30,
                          decoration: BoxDecoration(
                            color: chosen
                                ? Colors.grey.withOpacity(0.4)
                                : AppColors.thirdColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'All incomes',
                              style: TextStyle(
                                fontSize: SizeConfig.textMultiplier! * 2.5,
                                fontWeight: FontWeight.w700,
                                color: chosen
                                    ? Colors.black.withOpacity(0.4)
                                    : AppColors.primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier! * 2,
                  ),
                  BuyCard(
                    icon: Icons.shopping_bag_outlined,
                    buy: 'Shopping',
                    price: '\$2,100',
                    color: AppColors.thirdColor,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier! * 2,
                  ),
                  BuyCard(
                    icon: Icons.shopping_bag_outlined,
                    buy: 'Shopping',
                    price: '\$2,100',
                    color: AppColors.thirdColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
