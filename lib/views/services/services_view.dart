import 'package:day59/controllers/home/HomeBinding.dart';
import 'package:day59/shared/constants/ColorConstants.dart';
import 'package:day59/views/home/HomePage.dart';
import 'package:day59/views/services/widgets/category_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServiceView extends StatelessWidget {
  const ServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Services', style: TextStyle(color: Colors.black)),
      ),
      body: SafeArea(
        child: Column(
          children: [const SizedBox(height: 16), const CateogoriesGrid()],
        ),
      ),
    );
  }
}

class CateogoriesGrid extends StatelessWidget {
  const CateogoriesGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        children: [
          CategoryTile(
            imageLink: 'https://i.imgur.com/tGChxbZ.png',
            label: 'Vegetables',
            backgroundColor: kPrimaryColor,
            onTap: () {},
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/yOFxoIP.png',
            label: 'Meat And Fish',
            onTap: () {},
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/GPsRaFC.png',
            label: 'Medicine',
            onTap: () {},
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/mGRqfnc.png',
            label: 'Baby Care',
            onTap: () {},
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/fwyz4oC.png',
            label: 'Office Supplies',
            onTap: () {},
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/DNr8a6R.png',
            label: 'Beauty',
            onTap: () {},
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/O2ZX5nR.png',
            label: 'Gym Equipment',
            onTap: () {},
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/wJBopjL.png',
            label: 'Gardening Tools',
            onTap: () {},
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/P4yJA9t.png',
            label: 'Pet Care',
            onTap: () {},
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/sxGf76e.png',
            label: 'Eye Wears',
            onTap: () {},
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/BPvKeXl.png',
            label: 'Pack',
            onTap: () {},
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/m65fusg.png',
            label: 'Others',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
