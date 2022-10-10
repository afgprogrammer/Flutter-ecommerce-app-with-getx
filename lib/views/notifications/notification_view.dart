import 'package:day59/shared/constants/size_config.dart';
import 'package:day59/views/home/tabs/ExploreTab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home/HomeBinding.dart';
import '../home/HomePage.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Notifications', style: TextStyle(color: Colors.black)),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => {}),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: getProportionateScreenWidth(20)),
        children: const [
          NotificationTile(
            imageLink: 'https://i.imgur.com/e3z9DmE.png',
            title: 'Gifts Offer',
            subtitle: 'Hot Deal Buy one get free on Offfer Hery...',
            time: 'Now',
          ),
          NotificationTile(
            imageLink: 'https://i.imgur.com/gKa8Vfe.png',
            title: 'Coupon Offer',
            subtitle: 'Hot Deal Buy one get free on Offfer Hery...',
            time: '10 Minutes Ago',
          ),
          NotificationTile(
            imageLink: 'https://i.imgur.com/8jgs2mH.png',
            title: 'Congratulations',
            subtitle: 'You get your order...',
            time: '15 Minutes Ago',
          ),
          NotificationTile(
            imageLink: 'https://i.imgur.com/vHZFf4w.png',
            title: 'Your Order Cancelled',
            subtitle: 'Hot Deal Buy one get free on Offfer Hery...',
            time: '15 Minutes Ago',
          ),
          NotificationTile(
            imageLink: 'https://i.imgur.com/dbZiWGW.png',
            title: 'Great Winter Discounts',
            subtitle: 'Hot Deal Buy one get free on Offfer Hery...',
            time: '15 Minutes Ago',
          ),
          NotificationTile(
            imageLink: 'https://i.imgur.com/le6UYuV.png',
            title: '20% off vegetables',
            subtitle: 'Hot Deal Buy one get free on Offfer Hery...',
            time: '15 Minutes Ago',
          ),
          NotificationTile(
            imageLink: 'https://i.imgur.com/dbZiWGW.png',
            title: 'Great Winter Discounts',
            subtitle: 'Hot Deal Buy one get free on Offfer Hery...',
            time: '15 Minutes Ago',
          ),
          NotificationTile(
            imageLink: 'https://i.imgur.com/le6UYuV.png',
            title: '20% off vegetables',
            subtitle: 'Hot Deal Buy one get free on Offfer Hery...',
            time: '15 Minutes Ago',
          ),
          NotificationTile(
            imageLink: 'https://i.imgur.com/8jgs2mH.png',
            title: 'Congratulations',
            subtitle: 'You get your order...',
            time: '15 Minutes Ago',
          ),
        ],
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    Key? key,
    this.imageLink,
    required this.title,
    required this.subtitle,
    required this.time,
  }) : super(key: key);

  final String? imageLink;
  final String title;
  final String subtitle;
  final String time;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(getProportionateScreenWidth(8)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: imageLink != null
                  ? AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Image.network(imageLink!),
                    )
                  : null,
              title: Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 4),
                  Text(subtitle),
                  const SizedBox(height: 4),
                  Text(
                    time,
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 86),
              child: Divider(thickness: 0.1),
            ),
          ],
        ),
      ),
    );
  }
}
