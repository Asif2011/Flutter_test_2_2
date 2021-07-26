import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // padding: EdgeInsets.only(top: 3),
        children: [
          DrawerHeader(
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).secondaryHeaderColor,
                ),
                currentAccountPictureSize: Size.fromRadius(25),
                // margin: EdgeInsets.zero,
                accountName: Text("Asif Raza"),
                accountEmail: Text("asifrazadev2019@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/login.png"),
            ),
            // Image.asset("assets/images/login.png"),
          )),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text("Home"),
            subtitle: Text("Dunyapur"),
            trailing: Icon(CupertinoIcons.arrow_right),
            tileColor: Theme.of(context).primaryColor,
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text("Profile"),
            trailing: Icon(CupertinoIcons.arrow_right),
            tileColor: Theme.of(context).colorScheme.primaryVariant,
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail),
            title: Text("as@gmail.com"),
            trailing: Icon(CupertinoIcons.arrow_right),
            tileColor: Theme.of(context).colorScheme.secondaryVariant,
          ),
        ],
      ),
    );
  }
}
