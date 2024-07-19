import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task2_deltana/ViewModel/Order_ViewModel.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

class PaymentButton extends StatelessWidget {
  final String text;
  final PaymentMethod method;
PaymentButton({required this.text, required this.method});
  @override
  Widget build(BuildContext context) {
    return Consumer<OrderViewModel>(
      builder: (context, viewModel, child){
        return ElevatedButton(onPressed: (){
          viewModel.selectPaymentMethod(method);
        },
          child: Text(text, style: TextStyle(
              color: viewModel.selectedPaymentMethod == method ? MyTheme.blackColor : MyTheme.greyColor,
          fontFamily: 'IBM Plex Sans Arabic',
            fontWeight: viewModel.selectedPaymentMethod == method ? FontWeight.bold : FontWeight.w500,
            fontSize: 16.spMin
          ),),
          style:ElevatedButton.styleFrom(
            backgroundColor: viewModel.selectedPaymentMethod == method ? MyTheme.yellowColor : MyTheme.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.spMin))
          ) ,
        );
      },
    );
  }
}
