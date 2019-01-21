import 'package:flutter/material.dart';

import '../app_color.dart' show AppColor, Contents;
class NavigationIconView {
	final String _title;
	final IconData _icon;
	final IconData _activeIcon;
	final BottomNavigationBarItem item;
	NavigationIconView({Key key, String title, IconData icon, IconData activeIcon}) :
			_title = title,
			_icon = icon,
			_activeIcon = activeIcon,
			item = new BottomNavigationBarItem(
				icon: Icon(icon, color: Color(AppColor.TabColor),size: 15.0,),
				activeIcon: Icon(activeIcon, color: Color(AppColor.TabActiveColor),),
				title: Text(title, style: TextStyle(
					fontSize: 14.0,
					color: Color(AppColor.TabActiveColor),
				),),
				backgroundColor: Colors.white
			);
}

class HomeScreen extends StatefulWidget {
	_HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
	List<NavigationIconView> _navigationViews;
	@override
	void initState() {
		super.initState();
		_navigationViews = [
			NavigationIconView(
				title: '微信',
				icon: IconData(
					0xe713,
					fontFamily: Contents.IconFontFamily,
				),
				activeIcon: IconData(
					0xe618,
					fontFamily: Contents.IconFontFamily,
				),
			),
			NavigationIconView(
				title: '通讯录',
				icon: IconData(
					0xe602,
					fontFamily: Contents.IconFontFamily,
				),
				activeIcon: IconData(
					0xe604,
					fontFamily: Contents.IconFontFamily,
				),
			),
			NavigationIconView(
				title: '发现',
				icon: IconData(
					0xe747,
					fontFamily: Contents.IconFontFamily,
				),
				activeIcon: IconData(
					0xe746,
					fontFamily: Contents.IconFontFamily,
				),
			),
			NavigationIconView(
				title: '我的',
				icon: IconData(
					0xe763,
					fontFamily: Contents.IconFontFamily,
				),
				activeIcon: IconData(
					0xe60f,
					fontFamily: Contents.IconFontFamily,
				),
			),
		];
		
	}
	@override
	Widget build(BuildContext context) {
		final BottomNavigationBar botNavBar = BottomNavigationBar(
			items: _navigationViews.map((NavigationIconView view) {
				return view.item;
			}).toList(),
			currentIndex: 0,
			type: BottomNavigationBarType.fixed,
			onTap: (int index) {
				print('$index');
			},
		);
		return Scaffold(
			appBar: AppBar(
				title: Text('微信'),
				actions: <Widget>[
					IconButton(
						icon: Icon(Icons.search),
						onPressed: () {print('搜索按钮');},
					),
					Container(width: 10.0,),
					IconButton(
						icon: Icon(Icons.add),
						onPressed: () {print('加号');},
					),
					Container(width: 10.0,),
				],
			),
			body: Container(
				color: Colors.red,
			),
			bottomNavigationBar: botNavBar,
		);
	}
}
