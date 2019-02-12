import 'package:flutter/material.dart';

import '../app_color.dart' show AppColor, Contents;


import './conversation_page.dart';
import './contacts_page.dart';
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
				icon: Icon(icon),
				activeIcon: Icon(activeIcon),
				title: Text(title),
				backgroundColor: Colors.white
			);
}

class HomeScreen extends StatefulWidget {
	_HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
	PageController _pageController;
	int _currentIndex = 0;
	List<NavigationIconView> _navigationViews;
	List<Widget> _pages;
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
		_pageController = PageController(initialPage: _currentIndex);
		_pages = [
			ConversationPage(),
			ContactsPage(),
			Container(color: Colors.blue),
			Container(color: Colors.yellow),
		];
	}
	@override
	Widget build(BuildContext context) {
		final BottomNavigationBar botNavBar = BottomNavigationBar(
			fixedColor: Color(AppColor.TabActiveColor),
			items: _navigationViews.map((NavigationIconView view) {
				return view.item;
			}).toList(),
			currentIndex: _currentIndex,
			type: BottomNavigationBarType.fixed,
			onTap: (int index) {
				setState(() {
					_currentIndex = index;
					_pageController.animateToPage(_currentIndex, duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
				});
			},
		);
		return Scaffold(
			appBar: AppBar(
				title: Text('微信'),
				elevation: 0.0,
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
			body: PageView.builder(
				itemBuilder: (BuildContext context, int index) {
					return _pages[index];
				},
				controller: _pageController,
				itemCount: _pages.length,
				onPageChanged: (int index) {
					setState(() {
						_currentIndex = index;
					});
				},
			),
			bottomNavigationBar: botNavBar,
		);
	}
}
