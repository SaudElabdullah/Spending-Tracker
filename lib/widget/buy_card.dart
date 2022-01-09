import 'package:flutter/material.dart';
import 'package:spending_tracker/theme/app_colors.dart';
import 'package:spending_tracker/utils/size_config.dart';

class BuyCard extends StatelessWidget {
  const BuyCard(
      {Key? key,
      required this.icon,
      required this.buy,
      required this.price,
      required this.color})
      : super(key: key);
  final IconData icon;
  final String buy;
  final String price;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: SizeConfig.widthMultiplier! * 1,
        right: SizeConfig.widthMultiplier! * 3,
      ),
      height: SizeConfig.heightMultiplier! * 9,
      width: SizeConfig.widthMultiplier! * 100,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: SizeConfig.heightMultiplier! * 8,
            width: SizeConfig.heightMultiplier! * 8,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              icon,
              size: SizeConfig.heightMultiplier! * 5,
              color: AppColors.primaryColor,
            ),
          ),
          Text(
            buy,
            style: TextStyle(
                color: AppColors.secondaryColor,
                fontSize: SizeConfig.textMultiplier! * 3,
                fontWeight: FontWeight.w700),
          ),
          Text(
            price,
            style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: SizeConfig.textMultiplier! * 3,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
