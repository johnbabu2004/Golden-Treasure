import 'package:flutter/material.dart';
import 'package:myapp/screens/bottomNavBar/my_cart.dart';
import 'package:myapp/screens/drawer.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/widgets/app_bar.dart';
import 'package:myapp/widgets/bottomnavbar.dart';
import 'package:myapp/screens/bottomNavBar/my_notifications.dart';
import 'bottomNavBar/my_profile.dart';
import 'package:myapp/catalog/catalog.dart';



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  static  List<Widget> _widgetOptions = <Widget>[
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2665115953.
   HomeScreen(),
 MyCatalog(),

   MyCart(),
    MyNotifications(),
    MyProfile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: MyAppBar(
        title: 'Golden Treasure',
        scaffoldKey: _scaffoldKey,
      ),
       body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
      drawer: const MyDrawer(),
    );
  }
}


