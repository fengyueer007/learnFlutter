import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('风景'),
            accountEmail: Text('gsd'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'http://pics.sc.chinaz.com/files/pic/pic9/201712/zzpic8766.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                  image: NetworkImage(
                      'http://pics.sc.chinaz.com/files/pic/pic9/201801/zzpic9374.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6),
                      BlendMode.hardLight)),
            ),
          ),
          ListTile(
            title: Text('Messages', textAlign: TextAlign.right),
            trailing: Icon(Icons.message, size: 22.0, color: Colors.black12),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite', textAlign: TextAlign.right),
            trailing: Icon(Icons.favorite, size: 22.0, color: Colors.black12),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Settings', textAlign: TextAlign.right),
            trailing: Icon(Icons.settings, size: 22.0, color: Colors.black12),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
