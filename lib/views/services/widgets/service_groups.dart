import 'package:day59/shared/constants/ColorConstants.dart';
import 'package:flutter/material.dart';

class TaskGroupContainer extends StatelessWidget {
  final MaterialColor color;
  final bool? isSmall;
  final IconData icon;
  final String taskGroup;
  const TaskGroupContainer({
    Key? key,
    required this.color,
    this.isSmall = false,
    required this.icon,
    required this.taskGroup,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color[400],
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.4),
            blurRadius: 10,
            spreadRadius: 4,
            offset: const Offset(2, 6),
          )
        ],
        gradient: ColorConstants.getDarkLinearGradient(color),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          Align(
            alignment: isSmall! ? Alignment.centerLeft : Alignment.center,
            child: Icon(
              icon,
              size: isSmall! ? 60 : 120,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          Text(
            taskGroup,
            maxLines: 2,
            overflow: TextOverflow.fade,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
