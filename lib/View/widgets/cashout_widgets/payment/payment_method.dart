import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task2_deltana/View/visaScreen/addNewVisaScreen.dart';
import 'package:task2_deltana/View/widgets/cashout_widgets/payment/paymentVisaTile.dart';
import 'package:task2_deltana/View/widgets/cashout_widgets/payment/payment_button.dart';
import 'package:task2_deltana/ViewModel/Order_ViewModel.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

class PaymentMethodWidget extends StatefulWidget {
  @override
  _PaymentMethodWidgetState createState() => _PaymentMethodWidgetState();
}

class _PaymentMethodWidgetState extends State<PaymentMethodWidget> {
  int? _selectedCardIndex;

  @override
  Widget build(BuildContext context) {
    return Consumer<OrderViewModel>(
      builder: (context, viewModel, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PaymentButton(text: 'نقدي', method: PaymentMethod.Cash),
                  PaymentButton(text: 'فيزا', method: PaymentMethod.Visa),
                  PaymentButton(text: 'تقسيط', method: PaymentMethod.Installment),
                ],
              ),
              SizedBox(height: 23.spMin),
              if (viewModel.selectedPaymentMethod == PaymentMethod.Visa)
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('خيارات الدفع', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18.spMin,fontFamily: 'IBM Plex Sans Arabic'),),
                          InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AddNewVisa()));
                              },
                              child: Text('اضافه جديده', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18.spMin,fontFamily: 'IBM Plex Sans Arabic',color: MyTheme.lightGreyColor),)),
                        ],
                      ),
                    ),
                    PaymentMethodTile(
                      image: 'assets/images/visa.png',
                      height: 16.spMin,
                      width: 44.spMin,
                      text: '2512 **** **** ****',
                      isSelected: _selectedCardIndex == 0,
                      onTap: () {
                        setState(() {
                          _selectedCardIndex = 0;
                        });
                      },
                    ),
                    PaymentMethodTile(
                      image: 'assets/images/visa.png',
                      height: 16.spMin,
                      width: 44.spMin,
                      text: '2512 **** **** ****',
                      isSelected: _selectedCardIndex == 1,
                      onTap: () {
                        setState(() {
                          _selectedCardIndex = 1;
                        });
                      },
                    ),
                    PaymentMethodTile(
                      image: 'assets/images/visa.png',
                      height: 16.spMin,
                      width: 44.spMin,
                      text: '2512 **** **** ****',
                      isSelected: _selectedCardIndex == 2,
                      onTap: () {
                        setState(() {
                          _selectedCardIndex = 2;
                        });
                      },
                    ),
                  ],
                ),
            ],
          ),
        );
      },
    );
  }
}

