import 'package:day59/shared/constants/size_config.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    Key? key,
    required this.imageLink,
    required this.label,
    this.backgroundColor,
    required this.onTap,
  }) : super(key: key);

  final String imageLink;
  final String label;
  final Color? backgroundColor;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(18)),
              decoration: BoxDecoration(
                color: backgroundColor ?? Color(0xFFF7F7F7),
                shape: BoxShape.circle,
              ),
              child: SizedBox(
                height: 50,
                width: 36,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image.network(
                    imageLink,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
