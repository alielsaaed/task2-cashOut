import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/MyTheme.dart';

class PaymentMethodTile extends StatelessWidget {
  final String text;
  final bool isSelected;
 final String image;
  final VoidCallback onTap;
  final double height;
  final double width;

  const PaymentMethodTile({super.key, required this.text, required this.isSelected, required this.onTap, required this.image, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.spMin,
      width: 343.spMin,
      margin: EdgeInsets.symmetric(vertical: 8.spMin),
      decoration: BoxDecoration(
        border: Border.all(color: MyTheme.greyColor),
        borderRadius: BorderRadius.circular(8.spMin),
        color: Colors.white,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(image,height: height,width: width,),
            Text(text,
              style: TextStyle(
                fontSize: 18.spMin,
                fontFamily: 'IBM Plex Sans Arabic',
                fontWeight: FontWeight.w400,
              ),
            ),
            Radio(value: 0,
              groupValue: isSelected ? 0 : null,
              onChanged: (value) {
                onTap();
              },
              activeColor: MyTheme.yellowColor,
              fillColor: MaterialStateColor.resolveWith((states) => isSelected ? MyTheme.yellowColor : MyTheme.greyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
