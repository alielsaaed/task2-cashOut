import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task2_deltana/View/CashOutView.dart';
import 'package:task2_deltana/ViewModel/Order_ViewModel.dart';

void main() => runApp(
  ChangeNotifierProvider(create: (context)=> OrderViewModel(),
  child: DevicePreview(
    builder: (context) => MyApp(),
  ),
  )
);

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 720),
      minTextAdapt: true,
      child: MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        home: CashOutView(),
      ),

    );
  }
}