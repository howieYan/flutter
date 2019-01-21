import 'package:flutter/material.dart';
import './home/home_screen.dart';
import './app_color.dart' show AppColor;



void main() => runApp(MaterialApp(
	title: '微信',
	theme: ThemeData.light().copyWith(
		primaryColor: Color(AppColor.AppBarColor)
	),
	home: new HomeScreen(),
));
