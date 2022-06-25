import 'package:flutter/material.dart' show BoxDecoration, BuildContext, Colors, Drawer, EdgeInsets, FlutterLogo, FontWeight, Icon, Icons, Key, ListTile, ListView, StatelessWidget, Text, TextStyle, UserAccountsDrawerHeader, Widget;

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

    child: ListView(

      padding: EdgeInsets.zero,
        children:  <Widget>[
        const UserAccountsDrawerHeader( // <-- SEE HERE
          accountName: Text(
            "User Name",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          decoration: BoxDecoration(color: Colors.orange,),
          accountEmail: Text(
            "omoo_user@gmail.com",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          currentAccountPicture: FlutterLogo(),
        ),
         ListTile(
          leading: const Icon(Icons.calendar_today_sharp, color: Colors.teal,),
          title: const Text('Schedule Meals'),
          onTap: () => print("ListTile"),
        ),
         ListTile(
          leading: const Icon(Icons.add_shopping_cart_sharp, color: Colors.teal,),
          title: const Text('My Orders'),
          onTap: () => print("ListTile"),
        ),
         ListTile(
          leading: const Icon(Icons.message, color: Colors.teal,),
          title: const Text('Messages'),
          onTap: () => print("ListTile"),
        ),
         ListTile(
          leading: const Icon(Icons.account_circle, color: Colors.teal,),
          title: const Text('Profile'),
          onTap: () => print("ListTile"),
        ),

         ListTile(
          leading: const Icon(Icons.settings, color: Colors.teal,),
          title: const Text('Settings'),
          onTap: () => print("ListTile"),
        ),
        ]
      )
    );
  }
}