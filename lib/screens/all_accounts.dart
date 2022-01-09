import 'package:flutter/material.dart';
import 'package:spending_tracker/theme/app_colors.dart';
import 'package:spending_tracker/utils/size_config.dart';

class AllAccounts extends StatefulWidget {
  const AllAccounts({Key? key}) : super(key: key);

  @override
  _AllAccountsState createState() => _AllAccountsState();
}

class _AllAccountsState extends State<AllAccounts> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: AppColors.white,
              body: SafeArea(
                child: Container(),
              ),
            );
          },
        );
      },
    );
  }
}
