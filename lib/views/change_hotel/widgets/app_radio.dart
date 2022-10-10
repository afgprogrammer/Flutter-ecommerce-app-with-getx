import 'package:day59/shared/constants/ColorConstants.dart';
import 'package:flutter/material.dart';

class AppRadio extends StatelessWidget {
  const AppRadio({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: isActive ? kPrimaryColor : ColorConstants.gray200),
        shape: BoxShape.circle,
      ),
      child: Container(
        width: 16,
        height: 16,
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: isActive ? kPrimaryColor : ColorConstants.gray50,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
