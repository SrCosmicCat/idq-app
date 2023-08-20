

import 'package:flutter/widgets.dart';
import 'package:idq_app/models/user_model.dart';
import 'package:idq_app/providers/user_provider.dart';

class UserInfo extends StatefulWidget {
  final User userOrigin;
  final User userDestiny;

  UserInfo({super.key, required this.userOrigin, required this.userDestiny});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  final _userProvider = UserProvider();

  @override
  Widget build(BuildContext context) {
    return Text('Usuario: ${widget.userDestiny.name!} \nSeguro: ${widget.userDestiny.nss!} \nSeguro: ${widget.userDestiny.bloodType!}');
  }
}