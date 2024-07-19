import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../Model/item_model.dart';
import '../../../../ViewModel/Order_ViewModel.dart';
import '../../../../utils/MyTheme.dart';

class Quantity extends StatelessWidget{
  final OrderItem item;
  Quantity({required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(onPressed: (){
          Provider.of<OrderViewModel>(context,listen: false).updateQuantity(item, item.quantity +1);
        }, icon: Icon(Icons.add,color: MyTheme.blackColor)),

        Text(item.quantity.toString(),style: TextStyle(fontSize: 18.spMin,fontWeight: FontWeight.w700),),

        IconButton(onPressed: (){
          Provider.of<OrderViewModel>(context, listen: false).updateQuantity(item, item.quantity -1);
        },
            icon: Icon(Icons.remove,color: MyTheme.blackColor,)
        ),
      ],
    );
  }


}