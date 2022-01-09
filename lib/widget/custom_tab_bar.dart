import 'package:flutter/material.dart';
import 'package:spending_tracker/constants/constants.dart';
import 'package:spending_tracker/theme/app_colors.dart';
import 'package:spending_tracker/utils/size_config.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: SizeConfig.heightMultiplier! * 15,
      right: Constant.indentation,
      left: Constant.indentation,
      bottom: Constant.indentation - 20,
      child: SizedBox(
        height: SizeConfig.heightMultiplier! * 85,
        child: Column(
          children: [
            Container(
              height: SizeConfig.heightMultiplier! * 8,
              decoration: BoxDecoration(
                color: AppColors.thirdColor,
                borderRadius: BorderRadius.circular(
                  20.0,
                ),
              ),
              child: TabBar(
                padding: const EdgeInsets.all(4.0),
                labelStyle: TextStyle(
                  fontSize: SizeConfig.textMultiplier! * 2.5,
                  fontWeight: FontWeight.w500,
                ),
                labelColor: AppColors.secondaryColor,
                unselectedLabelColor: AppColors.secondaryColor,
                controller: _tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                  color: Colors.white,
                ),
                tabs: const [
                  Tab(
                    text: 'Accounts',
                  ),
                  Tab(
                    text: 'Debts',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
