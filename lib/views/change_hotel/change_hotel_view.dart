import 'package:day59/shared/constants/ColorConstants.dart';
import 'package:day59/shared/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'widgets/app_radio.dart';

class ChangeHotelView extends StatelessWidget {
  const ChangeHotelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Change Hotel',
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(getProportionateScreenWidth(16)),
        padding: EdgeInsets.all(getProportionateScreenWidth(16)),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: Stack(
          children: [
            ListView.separated(
              itemBuilder: (context, index) {
                return AddressTile(
                  label: 'Hotel Name',
                  isActive: index == 0,
                );
              },
              itemCount: 5,
              separatorBuilder: (context, index) => const Divider(
                thickness: 2,
                indent: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AddressTile extends StatelessWidget {
  const AddressTile({
    Key? key,
    required this.label,
    required this.isActive,
  }) : super(key: key);

  final String label;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppRadio(isActive: isActive),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.black,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
