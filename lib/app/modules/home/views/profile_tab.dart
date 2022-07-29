import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text('Profile',style: Theme.of(context).textTheme.headline3,),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 20,),
            CircleAvatar(
              backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
              radius: 50,
              child: const Icon(Icons.admin_panel_settings),
            ),
            Text('Hello')
          ],
        ),
      ),
    );
  }
}