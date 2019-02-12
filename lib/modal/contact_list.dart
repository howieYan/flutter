import 'package:flutter/material.dart';

import '../app_color.dart' show AppColor;

class Contact{
	const Contact({
		@required this.avatar,
		@required this.name,
		@required this.nameIndex
	});
	final String avatar;
	final String name;
	final String nameIndex;
	
}

class ContactsPageData {
	final List<Contact> contacts = [
		const Contact(
			avatar: 'http://img.52z.com/upload/news/image/20180525/20180525022432_44827.jpg',
			name: 'Are',
			nameIndex: 'A'
		),
		const Contact(
			avatar: 'http://img.52z.com/upload/news/image/20180912/20180912124602_70761.jpg',
			name: 'Aqw',
			nameIndex: 'A'
		),
		const Contact(
			avatar: 'http://img.52z.com/upload/news/image/20180822/20180822060859_33459.jpg',
			name: 'Awer',
			nameIndex: 'A'
		),
		const Contact(
			avatar: 'http://img.52z.com/upload/news/image/20180823/20180823052049_34069.jpg',
			name: 'btwew',
			nameIndex: 'B'
		),
		const Contact(
			avatar: 'http://img.name2012.com/uploads/allimg/180315/2126162554-0.jpg',
			name: 'Bdsfd',
			nameIndex: 'B'
		),
		const Contact(
			avatar: 'http://img.52z.com/upload/news/image/20180823/20180823052048_61686.jpg',
			name: 'Bfeef',
			nameIndex: 'B'
		),
		const Contact(
			avatar: 'http://img.name2012.com/uploads/allimg/180315/2126164201-4.jpg',
			name: 'Cfeef',
			nameIndex: 'C'
		),
		const Contact(
			avatar: 'http://imgup02.51wxjz.com/51wxjz/image/2018/0713/1531450087115824.jpg',
			name: 'Dfeef',
			nameIndex: 'D'
		),
		const Contact(
			avatar: 'http://img.52z.com/upload/news/image/20180525/20180525022427_78508.jpg',
			name: 'Efeef',
			nameIndex: 'E'
		),
		const Contact(
			avatar: 'http://img.52z.com/upload/news/image/20180906/20180906024402_56666.jpg',
			name: 'Ffeef',
			nameIndex: 'F'
		),
		const Contact(
			avatar: 'http://img.52z.com/upload/news/image/20180725/20180725021902_19184.jpg',
			name: 'Ffeef',
			nameIndex: 'F'
		),
		const Contact(
			avatar: 'http://www.banbaowang.com/uploads/allimg/180521/32-1P521115319-50.jpg',
			name: 'Ffeef',
			nameIndex: 'F'
		),
		const Contact(
			avatar: 'http://img.52z.com/upload/news/image/20180628/20180628034050_37157.jpg',
			name: 'Gfeef',
			nameIndex: 'G'
		),
		const Contact(
			avatar: 'http://img.name2012.com/uploads/allimg/180315/21215C328-0.jpg',
			name: 'Gfeef',
			nameIndex: 'G'
		),
		const Contact(
			avatar: 'http://img.52z.com/upload/news/image/20180628/20180628034050_61611.jpg',
			name: 'Hfeef',
			nameIndex: 'H'
		),
		const Contact(
			avatar: 'http://img0.imgtn.bdimg.com/it/u=3703290417,533356635&fm=26&gp=0.jpg',
			name: 'Hfeef',
			nameIndex: 'H'
		),
		const Contact(
			avatar: 'http://img.52z.com/upload/news/image/20180727/20180727085026_37620.jpg',
			name: 'Ifeef',
			nameIndex: 'I'
		),
		const Contact(
			avatar: 'http://pic.qqtn.com/up/2018-7/2018071009460743447.jpg',
			name: 'Jfeef',
			nameIndex: 'J'
		),
		const Contact(
			avatar: 'http://image.biaobaiju.com/uploads/20180802/01/1533145517-PFtAJzCmov.jpg',
			name: 'Jfeef',
			nameIndex: 'J'
		),
		const Contact(
			avatar: 'http://pic.qqtn.com/up/2018-7/2018071009460789256.jpg',
			name: 'Kfeef',
			nameIndex: 'K'
		),
		const Contact(
			avatar: 'http://pic.qqtn.com/up/2018-7/15305011181398771.jpg',
			name: 'Lfeef',
			nameIndex: 'L'
		),
		const Contact(
			avatar: 'http://img4.imgtn.bdimg.com/it/u=3248213331,56100235&fm=26&gp=0.jpg',
			name: 'Mfeef',
			nameIndex: 'M'
		),
		const Contact(
			avatar: 'http://img5.imgtn.bdimg.com/it/u=1671048027,1190408438&fm=26&gp=0.jpg',
			name: 'Mfeef',
			nameIndex: 'M'
		),
		const Contact(
			avatar: 'http://img.name2012.com/uploads/allimg/180503/2020104931-5.jpg',
			name: 'Name',
			nameIndex: 'N'
		),
		const Contact(
			avatar: 'http://pic.qqtn.com/up/2018-2/2018022511564977328.jpg',
			name: 'Oame',
			nameIndex: 'O'
		),
		const Contact(
			avatar: 'http://pic.9ht.com/up/2018-1/2018012511204965252.jpg',
			name: 'Pame',
			nameIndex: 'P'
		),
		const Contact(
			avatar: 'http://life.southmoney.com/tuwen/UploadFiles_6871/201809/20180914114014818.jpg',
			name: 'Qame',
			nameIndex: 'Q'
		),
		const Contact(
			avatar: 'http://pic.qqtn.com/up/2018-2/15192640847757246.jpg',
			name: 'Qame',
			nameIndex: 'Q'
		),
		const Contact(
			avatar: 'http://www.96weixin.com/upload/20181128/1543376356217519.jpg',
			name: 'Rame',
			nameIndex: 'R'
		),
		const Contact(
			avatar: 'http://www.agri35.com/UploadFiles/img_1_2194743105_1910674670_11.jpg',
			name: 'Same',
			nameIndex: 'S'
		),
		const Contact(
			avatar: 'http://www.agri35.com/UploadFiles/img_3_3172075958_1979565851_27.jpg',
			name: 'Tame',
			nameIndex: 'T'
		),
		const Contact(
			avatar: 'http://life.southmoney.com/tuwen/UploadFiles_6871/201809/20180929162143736.jpg',
			name: 'Uame',
			nameIndex: 'U'
		),
		const Contact(
			avatar: 'http://life.southmoney.com/tuwen/UploadFiles_6871/201808/20180828114305416.jpg',
			name: 'Vame',
			nameIndex: 'V'
		),
		const Contact(
			avatar: 'http://life.southmoney.com/tuwen/UploadFiles_6871/201810/20181015171358596.jpg',
			name: 'Wame',
			nameIndex: 'W'
		),
		const Contact(
			avatar: 'http://pic.9ht.com/up/2018-8/2018081316161676289.jpg',
			name: 'Xame',
			nameIndex: 'X'
		),
		const Contact(
			avatar: 'http://pic.qqtn.com/up/2018-7/2018071009460879044.jpg',
			name: 'Yame',
			nameIndex: 'Y'
		),
		const Contact(
			avatar: 'http://life.southmoney.com/tuwen/UploadFiles_6871/201810/20181015171358315.jpg',
			name: 'Zame',
			nameIndex: 'Z'
		),
	];
	
	static ContactsPageData mock() {
		return ContactsPageData();
	}
}


