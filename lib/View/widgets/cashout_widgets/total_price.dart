import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task2_deltana/ViewModel/Order_ViewModel.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

class TotalPrice extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<OrderViewModel>(
      builder: (context, viewModel, child) {
        return Card.outlined(
          color: Colors.white,
          shape: Border.all(color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                title: Text('المجموع الفرعي'),
                trailing: Text('${viewModel.totalPrice} IQD',style: TextStyle(color: MyTheme.blackColor,fontSize: 16.spMin,fontWeight: FontWeight.w500,fontFamily: 'IBM Plex Sans Arabic')),
              ),
              ListTile(
                title: Text('رسوم التوصيل'),
                trailing: Text('${viewModel.deliveryFee} IQD',style: TextStyle(color: MyTheme.blackColor,fontSize: 16.spMin,fontWeight: FontWeight.w500,fontFamily: 'IBM Plex Sans Arabic')),
              ),
              ListTile(
                title: Text('خصم'),
                trailing: Text('${viewModel.discount} IQD',style: TextStyle(color: MyTheme.blackColor,fontSize: 16.spMin,fontWeight: FontWeight.w500,fontFamily: 'IBM Plex Sans Arabic')),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: Divider(color: MyTheme.greyColor),
              ),
              ListTile(
                title: Text('المجموع'),
                trailing: Text('${viewModel.finalTotalPrice} IQD',style: TextStyle(color: MyTheme.blackColor,fontSize: 16.spMin,fontWeight: FontWeight.w500,fontFamily: 'IBM Plex Sans Arabic'),),
              )
            ],
          ),
        );
      },
    );
  }
}
