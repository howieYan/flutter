import 'package:flutter/material.dart';

import '../app_color.dart' show AppColor, AppStyles, Contents;
import '../modal/conversation_list.dart' show Conversation, ConversationPageData, Device;



class _ConversationItem extends StatelessWidget {
  const _ConversationItem({Key key, this.conversation})
      : assert(conversation != null),
        super(key: key);
  final Conversation conversation;

  @override
  Widget build(BuildContext context) {
    // img的初始化
    Widget avatar;
    if (conversation.isAvatarFronNet()) {
      avatar = Image.network(
        conversation.avatar,
        width: Contents.ConversationActiveSize,
        height: Contents.ConversationActiveSize,
      );
    } else {
      avatar = Image.asset(
        conversation.avatar,
        width: Contents.ConversationActiveSize,
        height: Contents.ConversationActiveSize,
      );
    }
    Widget avatarContainer;
    if (conversation.badge > 0) {
      // 未读消息
      Widget unRedMsgCountText = Container(
        width: Contents.UnRedMsgNotiFyDotSize,
        height: Contents.UnRedMsgNotiFyDotSize,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(Contents.UnRedMsgNotiFyDotSize / 2.0),
          color: Color(AppColor.NotifyDotBg),
        ),
        child: Text(conversation.badge.toString(),
            style: AppStyles.unRedMsgCountDat),
      );

      avatarContainer = Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          avatar,
          Positioned(
            right: -6.0,
            top: -6.0,
            child: unRedMsgCountText,
          ),
        ],
      );
    } else {
      avatarContainer = avatar;
    }

    var rightAre = <Widget>[
      Text(conversation.createAt, style: AppStyles.desStyle),
      SizedBox(height: 10.0)
    ];
    if (conversation.isMute) {
      rightAre.add(Icon(
        IconData(
          0xe664,
          fontFamily: Contents.IconFontFamily,
        ),
        color: Color(AppColor.ConversationMuteIconColor),
        size: Contents.ConversationMuteIconSize,
      ));
    } else {
      rightAre.add(Icon(
        IconData(
          0xe664,
          fontFamily: Contents.IconFontFamily,
        ),
        color: Colors.transparent,
        size: Contents.ConversationMuteIconSize,
      ));
    }
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Color(AppColor.ConversationItemBg),
          border: Border(
            bottom: BorderSide(
                color: Color(AppColor.ConversationBorderSide),
                width: Contents.ConversationBorderWidth),
          )),
      // color: Color(AppColor.ConversationItemBg),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          avatarContainer,
          Container(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(conversation.title, style: AppStyles.TitleStyle),
                Text(conversation.des, style: AppStyles.desStyle),
              ],
            ),
          ),
          Container(
            width: 10.0,
          ),
          Column(children: rightAre),
        ],
      ),
    );
  }
}

class _DeviceInfoItem extends StatelessWidget {
  const _DeviceInfoItem({this.device: Device.WIN}) :
      assert(device != null);
  
  final Device device;
  
  int get iconName  {
    return device == Device.WIN ? 0xe640 :  0xe681;
  }
  
  String get deviceName {
    return device == Device.WIN ? 'Windows' :  'Mac';
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: Contents.ConversationBorderWidth,
            color: Color(AppColor.ConversationBorderSide)
          )
        ),
        color: Color(AppColor.DeviceInfoItemBg)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            IconData(
              this.iconName,
              fontFamily: Contents.IconFontFamily,
            ),
            size: 24.0,
            color: Color(AppColor.DeviceInfoItemText),
          ),
          SizedBox(width: 16.0,),
          Text(
            '$deviceName 微信已登录，手机通知已关闭',
            style: AppStyles.DeviceInfoItemTextStyle,
          )
        ],
      ),
    );
  }
}


class ConversationPage extends StatefulWidget {
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  final ConversationPageData data = ConversationPageData.mock();
  @override
  Widget build(BuildContext context) {
    var mockConversationData = data.conversations;
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        if (data.device != null) {
          if (index == 0) {
            return _DeviceInfoItem(device: data.device,);
          }
          return _ConversationItem(
            conversation: mockConversationData[index - 1],
          );
        } else {
          return _ConversationItem(
            conversation: mockConversationData[index],
          );
        }
      },
      itemCount: data.device != null ? mockConversationData.length + 1 : mockConversationData.length,
    );
  }
}
