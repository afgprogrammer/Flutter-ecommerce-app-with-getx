import 'package:flutter/material.dart';

class UserTab extends StatelessWidget {
  const UserTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.yellow,
        child: Center(
          child: Text('User'),
        ),
      ),
    );
  }
}