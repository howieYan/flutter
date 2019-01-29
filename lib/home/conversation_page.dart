import 'package:flutter/material.dart';

import '../app_color.dart' show AppColor, AppStyles, Contents;
import '../modal/conversation_list.dart' show Conversation, mockConversations;

class _ConversationItem extends StatelessWidget {
  const _ConversationItem({Key key, this.conversation})
  :assert(conversation != null),
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
          borderRadius: BorderRadius.circular(Contents.UnRedMsgNotiFyDotSize / 2.0),
          color: Color(AppColor.NotifyDotBg),
        ),
        child: Text(conversation.badge.toString(), style: AppStyles.unRedMsgCountDat),
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
            width: Contents.ConversationBorderWidth
          ),
        )
      ),
			// color: Color(AppColor.ConversationItemBg),
			child: Row(
				crossAxisAlignment: CrossAxisAlignment.center,
				children: <Widget>[
					avatarContainer,
          Container(width: 10.0,),
					Expanded(
						child: Column(
							crossAxisAlignment: CrossAxisAlignment.start,
							children: <Widget>[
								Text(conversation.title, style: AppStyles.TitleStyle),
								Text(conversation.des, style: AppStyles.desStyle),
							],
						),
					),
          Container(width: 10.0,),
					Column(
						children: rightAre
					),
				],
			),
		);
	}
}
class ConversationPage extends StatefulWidget {
	_ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
	@override
	Widget build(BuildContext context) {
		return ListView.builder(
			itemBuilder: (BuildContext context, int index) {
				return _ConversationItem(conversation: mockConversations[index],);
			},
			itemCount: mockConversations.length,
		);
	}
}
