import '../screens/filter_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget builtListTile(String title, IconData icon, VoidCallback tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        // Icons.restaurant,
        size: 26,
      ),
      title: Text(
        title,
        // 'Meals',
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          builtListTile(
            'Meals',
            Icons.restaurant,
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          //move to above widget function
          // ListTile(
          //   leading: Icon(
          //     Icons.restaurant,
          //     size: 26,
          //   ),
          //   title: Text(
          //     'Meals',
          //     style: TextStyle(
          //       fontFamily: 'RobotoCondensed',
          //       fontSize: 24,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          //   onTap: (){
          //     //..
          //   },
          // ),
          builtListTile(
            'Filters',
            Icons.settings,
            () {
              // Navigator.of(context).pushNamed(FiltersScreen.routeName);
              Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
            },
          ),
          // ListTile(
          //   leading: Icon(
          //     Icons.settings,
          //     size: 26,
          //   ),
          //   title: Text(
          //     'Filters',
          //     style: TextStyle(
          //       fontFamily: 'RobotoCondensed',
          //       fontSize: 24,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          //   onTap: (){
          //     //..
          //   },
          // ),
        ],
      ),
    );
  }
}
