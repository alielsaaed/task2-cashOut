import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

class VoucherContainer extends StatelessWidget {
  const VoucherContainer({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8,left: 8,bottom: 8,top: 4),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: MyTheme.greyColor),
          borderRadius: BorderRadius.circular(10.spMin)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('رمز ترويجي', style: TextStyle(color: MyTheme.greyColor,fontSize: 14.spMin,fontWeight: FontWeight.w400,fontFamily: 'IBM Plex Sans Arabic'),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(backgroundColor:MyTheme.yellowColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.spMin))), child: Text('تأكيد' , style: TextStyle(color: MyTheme.blackColor,fontSize: 14.spMin,fontFamily: 'IBM Plex Sans Arabic',fontWeight: FontWeight.w500),),

              ),
            )
          ],
        ),
      ),
    );
  }
}
