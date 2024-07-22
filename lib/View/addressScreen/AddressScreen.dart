import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task2_deltana/View/addressScreen/DeleteBottomSheet.dart';
import 'package:task2_deltana/View/addressScreen/editAddressScreen.dart';
import 'package:task2_deltana/ViewModel/address_viewModel.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

import 'AddAddress.dart';

class AddressScreen extends StatelessWidget {
  static const String routeName = 'address';

  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AddressViewModel(),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('العنوان'),
            titleTextStyle: TextStyle(
              color: MyTheme.blackColor,
              fontWeight: FontWeight.w500,
              fontFamily: 'IBM Plex Sans Arabic',
              fontSize: 20.spMin,
            ),
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: MyTheme.white,
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: MyTheme.blackColor,
                      size: 25.spMin,
                    ),
                  ),
                ),
              ),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Expanded(
                child: Consumer<AddressViewModel>(
                  builder: (context, addressViewModel, child) {
                    return ListView.separated(
                      padding: const EdgeInsets.all(10),
                      itemCount: addressViewModel.addresses.length,
                      separatorBuilder: (context, index) => SizedBox(height: 10.h),
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            ListTile(
                              contentPadding: const EdgeInsets.only(left: 50, right: 10),
                              onTap: () {
                                addressViewModel.selectedTile(index);
                              },
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: addressViewModel.addresses[index].isSelected
                                      ? MyTheme.yellowColor
                                      : MyTheme.greyColor,
                                ),
                                borderRadius: BorderRadius.circular(8.spMin),
                              ),
                              title: Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: MyTheme.greyColor,
                                    size: 18.spMin,
                                  ),
                                  SizedBox(width: 2.w),
                                  Text(
                                    'الشركة',
                                    style: TextStyle(
                                      fontSize: 18.spMin,
                                      fontFamily: 'IBM Plex Sans Arabic',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              subtitle: Text(
                                addressViewModel.addresses[index].address,
                                style: TextStyle(
                                  color: MyTheme.greyColor,
                                  fontSize: 16.spMin,
                                  fontFamily: 'IBM Plex Sans Arabic',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      deleteBottomSheet(context,index);

                                    },
                                    icon: const Icon(Icons.delete_outline),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => const EditAddress(),
                                        ),
                                      );
                                    },
                                    icon: const Icon(Icons.edit),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30,right: 10,left: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AddAddress()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.spMin)),
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: MyTheme.yellowColor
                  ),
                  child: Text(
                    'أضف عنوان جديد',
                    style: TextStyle(
                      color: MyTheme.blackColor,
                      fontSize: 20.spMin,
                      fontFamily: 'IBM Plex Sans Arabic',
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
