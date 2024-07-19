import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

class AddressWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Card.outlined(
        color: Colors.white,
        elevation: 0,
        child: ListTile(
          leading: Icon(Icons.arrow_back_ios,color: MyTheme.arrowGrey, size: 16.spMin,),
          title: Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('الشركة',style: TextStyle(fontSize: 18.spMin,fontFamily: 'IBM Plex Sans Arabic',fontWeight: FontWeight.w500),),
              SizedBox(width: 2.w,),
              Icon(Icons.location_on_outlined,color: MyTheme.greyColor,size: 18.spMin,),
            ],
          ),
          subtitle: Text('٦ أكتوبر ، الحي التاني ، المجاوره التالته ، عماره ٥١٦',style: TextStyle(fontFamily: 'IBM Plex Sans Arabic',fontSize: 16.spMin,fontWeight: FontWeight.w400),),
        ),
      ),
    );
  }
}
