import 'package:flutter/material.dart';

class AppColor {
  static const AppBarColor = 0xff303030;
  static const TabActiveColor = 0xff46c11b;
  static const TabColor = 0xff999999;
  static const ConversationTitleColor = 0xff000000;
  static const ConversationItemBg = 0xffffffff;
  static const ConversationItemTitleStyle = 0xff353535;
  static const ConversationItemDesStyle = 0xff9c9c9c;
  static const ConversationBorderSide = 0xffd9d9d9;
  static const NotifyDotBg = 0xffff3e3e;
  static const NotifyDotBgText = 0xffffffff;
  static const ConversationMuteIconColor = 0xffd8d8d8;
  static const DeviceInfoItemBg = 0xfff5f5f5;
  static const DeviceInfoItemText = 0xff606062;
}

class AppStyles {
  static const TitleStyle = TextStyle(
    fontSize: 20.0,
    color: Color(AppColor.ConversationItemTitleStyle),
  );
  static const desStyle = TextStyle(
    fontSize: 14.0,
    color: Color(AppColor.ConversationItemDesStyle),
  );
  static const unRedMsgCountDat = TextStyle(
    fontSize: 12.0,
    color: Color(AppColor.NotifyDotBgText),
  );
  static const DeviceInfoItemTextStyle = TextStyle(
    fontSize: 13.0,
    color: Color(AppColor.DeviceInfoItemText),
  );
}

class Contents {
  static const IconFontFamily = 'appIconFont';
  static const ConversationActiveSize = 50.0;
  static const ConversationBorderWidth = 1.0;
  static const UnRedMsgNotiFyDotSize = 20.0;
  static const ConversationMuteIconSize = 18.0;
  static const ContactAvatarSize = 40.0;
}
