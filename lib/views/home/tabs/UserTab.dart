import 'package:flutter/material.dart';

class UserTab extends StatelessWidget {
  const UserTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 100.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                titlePadding: EdgeInsets.symmetric(horizontal: 16),
                title: Text(
                  'Settings',
                  style: theme.textTheme.headline6,
                ),
              ),
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  Text("Account", style: theme.textTheme.headline6?.copyWith(fontWeight: FontWeight.w400)),
                  SizedBox(height: 16),
                  Container(
                    height: 80,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.shade200
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade300
                          ),
                          child: Center(
                            child: Icon(Icons.person, size: 32, color: Colors.grey.shade500),
                          ),
                        ),
                        SizedBox(width: 16),
                        Text("Login / Register", style: theme.textTheme.subtitle1?.copyWith(fontWeight: FontWeight.w400, color: Colors.blue)),
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                  Text("Settings", style: theme.textTheme.headline6?.copyWith(fontWeight: FontWeight.w400)),
                  SizedBox(height: 16),
                  _buildListTile('Appearance', Icons.dark_mode, 'Light', Colors.purple, theme),
                  SizedBox(height: 8),
                  _buildListTile('Language', Icons.language, 'English', Colors.orange, theme),
                  SizedBox(height: 8),
                  _buildListTile('Notifications', Icons.notifications_outlined, '', Colors.blue, theme),
                  SizedBox(height: 8),
                  _buildListTile('Help', Icons.help, '', Colors.green, theme),
                  SizedBox(height: 8),
                  _buildListTile('Logout', Icons.exit_to_app, '', Colors.red, theme),

                ],
              ),
              Text("Version 1.0.0", style: theme.textTheme.bodyText2?.copyWith(color: Colors.grey.shade500)),
            ],
          ),
        )
      )
    );
  }

  Widget _buildListTile(String title, IconData icon, String trailing, Color color, theme) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: Container(
        width: 46,
        height: 46,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color.withAlpha(30)
        ),
        child: Center(
          child: Icon(icon, color: color,),
        ),
      ),
      title: Text(title, style: theme.textTheme.subtitle1),
      trailing: Container(
        width: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(trailing, style: theme.textTheme.bodyText1?.copyWith(color: Colors.grey.shade600)),
            Icon(Icons.arrow_forward_ios, size: 16,),
          ],
        ),
      ),
      onTap: () {
      },
    );
  }
}
