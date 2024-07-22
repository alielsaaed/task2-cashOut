import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task2_deltana/ViewModel/Order_ViewModel.dart';
import 'package:task2_deltana/utils/MyTheme.dart';
import 'Quantity.dart';

class OrderList extends StatelessWidget {
  const OrderList({super.key});


  @override
  Widget build(BuildContext context) {
    return Consumer<OrderViewModel>(
      builder: (context, viewModel, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            constraints: BoxConstraints(
              maxHeight: 230.h,
            ),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: viewModel.items.length,
              itemBuilder: (context, index) {
                final item = viewModel.items[index];
                return Stack(
                  children: [
                    Card.outlined(
                      color: Colors.white,
                      child: ListTile(
                        leading: Image.network('https://media.croma.com/image/upload/v1689155904/Croma%20Assets/Communication/Headphones%20and%20Earphones/Images/273405_0_pily78.png'),
                        title: Text(item.name, style: TextStyle(color: MyTheme.blackColor, fontWeight: FontWeight.w400, fontSize: 16.spMin, fontFamily: 'IBM Plex Sans Arabic')),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text('الحجم : ${item.size}', style: TextStyle(color: MyTheme.greyColor, fontSize: 16.spMin, fontFamily: 'IBM Plex Sans Arabic')),
                            Text('IQD 60,000', style: TextStyle(color: MyTheme.blackColor, fontFamily: 'IBM Plex Sans Arabic', fontSize: 16.spMin, fontWeight: FontWeight.w600))
                          ],
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Quantity(item: item),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 4,
                      left: 4,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete_outline, color: MyTheme.redColor, size: 24.spMin),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}