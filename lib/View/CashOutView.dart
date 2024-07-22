import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_deltana/View/addressScreen/AddressScreen.dart';
import 'package:task2_deltana/View/widgets/cashout_widgets/Address_widget.dart';
import 'package:task2_deltana/View/widgets/cashout_widgets/OrderList/OrderList.dart';
import 'package:task2_deltana/View/widgets/cashout_widgets/payment/payment_method.dart';
import 'package:task2_deltana/View/widgets/cashout_widgets/success_dialog.dart';
import 'package:task2_deltana/View/widgets/cashout_widgets/total_price.dart';
import 'package:task2_deltana/View/widgets/cashout_widgets/voucher_container.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

class CashOutView extends StatefulWidget {
  static const String routeName = 'cash-out';

  const CashOutView({super.key});
  @override
  State<CashOutView> createState() => _CashOutViewState();
}

class _CashOutViewState extends State<CashOutView> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('الدفع', style: TextStyle(color: MyTheme.blackColor,fontSize: 20.spMin,fontFamily: 'IBM Plex Sans Arabic',fontWeight: FontWeight.w500),),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: MyTheme.white
              ),
              child: Center(child: Icon(Icons.arrow_back,color: MyTheme.blackColor,size: 25.spMin,),),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10,right: 10),
                child: Text('عنوان التسليم', style: TextStyle(color: MyTheme.blackColor,fontWeight: FontWeight.w500,fontFamily: 'IBM Plex Sans Arabic',fontSize: 18.spMin),),
              ),
              InkWell(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const AddressScreen()));
              },
                  child: AddressWidget()),
              SizedBox(height: 23.h,),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,right: 10),
                child: Text('طرق الدفع', style: TextStyle(color: MyTheme.blackColor,fontWeight: FontWeight.w500,fontFamily: 'IBM Plex Sans Arabic',fontSize: 18.spMin),),
              ),
              PaymentMethodWidget(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('لائحة الطلبات',style: TextStyle(fontSize: 18.spMin,fontFamily: 'IBM Plex Sans Arabic',fontWeight: FontWeight.w500),),
              ),
              OrderList(),
              VoucherContainer(),
              TotalPrice(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(onPressed: (){
                  showSuccessDialog(context);
                },style:ElevatedButton.styleFrom(backgroundColor:MyTheme.yellowColor ,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.spMin),
                    ),
                ), child: Text('اتمام الشراء',style: TextStyle(
                  color: MyTheme.blackColor,fontFamily: 'IBM Plex Sans Arabic',fontWeight: FontWeight.w500,fontSize: 20.spMin
                ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
