import 'package:day59/shared/widgets/Sidebar.dart';
import 'package:day59/shared/widgets/coustom_bottom_nav_bar.dart';
import 'package:day59/views/home/tabs/body.dart';
import 'package:flutter/material.dart';

import '../../shared/constants/enums.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(child: UserTab()),
        bottomNavigationBar: CustomBottomNavBar(
          selectedMenu: MenuState.home,
        ),
        body: ExploreTab());
  }
}
