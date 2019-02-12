import 'package:flutter/material.dart';

import '../modal/contact_list.dart' show Contact, ContactsPageData;

import '../app_color.dart' show AppColor, AppStyles, Contents;

class _ContactItem extends StatelessWidget {
  _ContactItem({
    @required this.avatar,
    @required this.title,
    this.groupTitle,
    this.onPressed,
  });

  final String avatar;
  final String title;
  final String groupTitle;
  final VoidCallback onPressed;
  bool get _isAvatarFromNet {
    return this.avatar.startsWith('http') || this.avatar.startsWith('https');
  }
  @override
  Widget build(BuildContext context) {
    Widget _avatarItem;
    if (_isAvatarFromNet) {
      _avatarItem= Image.network(
        avatar,
        width: Contents.ContactAvatarSize,
        height: Contents.ContactAvatarSize,
      );
    } else {
      _avatarItem= Image.asset(
        avatar,
        width: Contents.ContactAvatarSize,
        height: Contents.ContactAvatarSize,
      );
    }
   
    return Container(
        padding: EdgeInsets.only(left: 15.0, right: 16.0),
        child: Container(
          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      width: Contents.ConversationBorderWidth,
                      color: Color(AppColor.ConversationBorderSide)))),
          child: Row(
            children: <Widget>[
              _avatarItem,
              SizedBox(
                width: 10.0,
              ),
              Text(title)
            ],
          ),
        ));
  }
}

class ContactsPage extends StatefulWidget {
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  final ContactsPageData data = ContactsPageData.mock();
  final List<Contact> _contacts = [];
  final List<_ContactItem> functionButtons = [
    _ContactItem(
      avatar: 'asset/images/ANewFriend.png',
      title: '新的朋友',
      onPressed: () {
        print('新的朋友');
      },
    ),
    _ContactItem(
      avatar: 'asset/images/GroupChat.png',
      title: '群聊',
      onPressed: () {
        print('群聊');
      },
    ),
    _ContactItem(
      avatar: 'asset/images/TheLabel.png',
      title: '标签',
      onPressed: () {
        print('标签');
      },
    ),
    _ContactItem(
      avatar: 'asset/images/ThePublic.png',
      title: '公众号',
      onPressed: () {
        print('公众号');
      },
    )
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _contacts
      ..addAll(data.contacts)
      ..addAll(data.contacts)
      ..addAll(data.contacts);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        if (index < functionButtons.length) {
          return functionButtons[index];
        }
        int _contactIndex = index - functionButtons.length;
        Contact _contact = _contacts[_contactIndex];
        return _ContactItem(
          avatar: _contact.avatar,
          title: _contact.name,
        );
      },
      itemCount: _contacts.length + functionButtons.length,
    );
  }
}
