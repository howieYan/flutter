import 'package:flutter/material.dart';

import '../app_color.dart' show AppColor;
class Conversation {
	const Conversation({
		@required this.title,
		@required this.avatar,
		this.titleColor : AppColor.ConversationTitleColor,
		this.des,
		this.badge : 0,
		this.displayDat : false,
		@required this.createAt,
		this.isMute : false,
	}) : assert(avatar != null),
		 assert(title != null),
		 assert(createAt != null);
	
	final String avatar;
	final String title;
	final String des;
	final int titleColor;
	final String createAt;
	final bool isMute;
	final int badge;
	final bool displayDat;

  bool isAvatarFronNet () {
    if (this.avatar.indexOf('http')  == 0 || this.avatar.indexOf('https') == 0) {
      return true;
    }
    return  false;
  }
}

const  List<Conversation> mockConversations = [
	const Conversation(
		avatar: 'asset/images/timg.jpeg',
		title: '文件传输助手',
		des: '',
		createAt: '19:56'
	),
	const Conversation(
		avatar: 'http://img4q.duitang.com/uploads/item/201504/22/20150422H0043_vRHiW.thumb.700_0.jpeg',
		title: '特定的目录结构来放置图片',
		des: 'Flutter 会根据当前设备的分辨率加载对应的',
		createAt: '12:56'
	),
	const Conversation(
		avatar: 'http://img.pc841.com/2018/0905/20180905031728569.jpg',
		title: '分开始减肥了空间浪费时间',
		des: 'Flutter 福建省地方就是老骥伏枥事件发生',
		createAt: '13:20',
		isMute: true,
		badge: 4,
		displayDat: false
	),
	const Conversation(
		avatar: 'http://b-ssl.duitang.com/uploads/item/201508/23/20150823182247_xJzS8.jpeg',
		title: '小我',
		des: 'Flutter 的鬼地方个梵蒂冈奋斗',
		createAt: '10:30'
	),
	const Conversation(
		avatar: 'http://hbimg.b0.upaiyun.com/1edc55b921d5513a1909de2e22d02553ce0fd3cd5d2ac-Mxmmbu_fw236',
		title: '我的爱人',
		des: 'Flutter 福建省德弗里斯；都快疯了；上课',
		createAt: '12:11'
	),
	const Conversation(
		avatar: 'http://image.yy.com/yywebalbumbs2bucket/bcc166105a6d4cd6b5e597cf5944ac99_1436068350477.jpg',
		title: '小妮子',
		des: 'Flutter 我快疯了是快疯了； ',
		createAt: '12:33',
    badge: 200,
	),
	const Conversation(
		avatar: 'https://img4.duitang.com/uploads/item/201402/22/20140222113302_fCUyc.thumb.700_0.jpeg',
		title: '分手就疯狂的世界里',
		des: 'Flutter 范德萨范德萨范德萨范德萨',
		createAt: '11:22'
	),
	const Conversation(
		avatar: 'http://k1.jsqq.net/uploads/allimg/160609/5_160609154717_1.jpg',
		title: '兔兔体育体育',
		des: 'Flutter 工人日报柔软',
		createAt: '13:22'
	),
  const Conversation(
		avatar: 'http://img.popoho.com/allimg/140401/2045113445-11.jpg',
		title: 'greg 热',
		des: 'Flutter 大发放',
		createAt: '13:22'
	),
  const Conversation(
		avatar: 'http://life.southmoney.com/tuwen/UploadFiles_6871/201808/20180808093241858.jpg',
		title: '发生的范德萨发',
		des: 'Flutter 发发顺丰撒',
		createAt: '13:22'
	),
];