import 'package:flutter/material.dart';
import 'package:spending_tracker/constants/constants.dart';
import 'package:spending_tracker/theme/app_colors.dart';
import 'package:spending_tracker/utils/size_config.dart';
import 'package:spending_tracker/widget/buy_card.dart';
import 'package:spending_tracker/widget/custom_tab_bar.dart';

class AllAccounts extends StatefulWidget {
  const AllAccounts({Key? key}) : super(key: key);

  @override
  _AllAccountsState createState() => _AllAccountsState();
}

class _AllAccountsState extends State<AllAccounts> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: Constant.top,
          left: Constant.indentation,
          child: Text(
            'All accounts',
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
        const CustomTabBar(),
        Positioned(
          top: SizeConfig.heightMultiplier! * 25,
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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Accounts',
                        style: TextStyle(
                          fontSize: SizeConfig.textMultiplier! * 3,
                          color: AppColors.secondaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '\$33,000',
                        style: TextStyle(
                          fontSize: SizeConfig.textMultiplier! * 3,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier! * 4,
                  ),
                  BuyCard(
                    icon: Icons.shopping_bag_outlined,
                    buy: 'Cash',
                    price: '\$1,000',
                    color: AppColors.thirdColor,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier! * 2,
                  ),
                  BuyCard(
                    icon: Icons.credit_card,
                    buy: 'Card',
                    price: '\$12,000',
                    color: Colors.blueAccent.withOpacity(0.1),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier! * 2,
                  ),
                  BuyCard(
                    icon: Icons.credit_card,
                    buy: 'Credit',
                    price: '\$20,000',
                    color: Colors.blueGrey.withOpacity(0.1),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier! * 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Savings',
                        style: TextStyle(
                          fontSize: SizeConfig.textMultiplier! * 3,
                          color: AppColors.secondaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '\$8,000',
                        style: TextStyle(
                          fontSize: SizeConfig.textMultiplier! * 3,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier! * 4,
                  ),
                  BuyCard(
                    icon: Icons.wb_sunny_outlined,
                    buy: 'Vacation',
                    price: '\$8,000',
                    color: AppColors.thirdColor,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier! * 2,
                  ),
                  BuyCard(
                    icon: Icons.laptop_chromebook_outlined,
                    buy: 'College',
                    price: '\$5,000',
                    color: Colors.lightBlueAccent.withOpacity(0.1),
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
