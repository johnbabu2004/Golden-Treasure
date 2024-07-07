

 import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/screens/login.dart';
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final GlobalKey<ScaffoldState> scaffoldKey;

  MyAppBar({
    required this.title,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
          centerTitle: true,

      title: Text(
        title,
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
      ),
      backgroundColor: Colors.brown,
      leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.white),
        onPressed: () {
          scaffoldKey.currentState?.openDrawer();
        },
      ),
      actions: [
       Padding(
         padding: const EdgeInsets.all(10.0),
         child: ElevatedButton(
         
            child: Text('Login',style: TextStyle(color: Colors.brown[500]),),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyLogin()),
              );
            },
          ),
       ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
