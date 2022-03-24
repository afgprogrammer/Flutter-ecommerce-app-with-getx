import 'package:flutter/material.dart';

class FavoriteTab extends StatelessWidget {
  const FavoriteTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.yellow,
        child: Center(
          child: Text('Favorite'),
        ),
      ),
    );
  }
}