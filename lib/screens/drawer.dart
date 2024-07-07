import 'package:flutter/material.dart';
import 'package:myapp/screens/homepage.dart';
import 'package:myapp/screens/settings.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            
            accountName: const Text("SaiPallavi",style: TextStyle(color :Colors.black),),
           accountEmail:const Text ("SaiPallavi@gmail.com",style: TextStyle(color :Colors.black),),
          
           currentAccountPicture: CircleAvatar(
            

            backgroundImage:NetworkImage("https://i.pinimg.com/474x/b8/92/1f/b8921f462587dfcef7a82703c01847b2.jpg"),
           ),
           decoration: BoxDecoration(
           image: DecorationImage(image: NetworkImage('https://i.pinimg.com/474x/dd/44/c1/dd44c1fda6f2371de5518dd6fd52f187.jpg'),
           fit: BoxFit.fitWidth
           )
            
           ),
           

           ),
           ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1694634753.
            onTap: ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage())),
           ),
           ListTile(
            leading: Icon(Icons.settings),
            title: Text("settings"),
            onTap: ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=>SettingsPage())),
           ),
           ListTile(
            leading: Icon(Icons.help),
            title: Text("help"),
            onTap: ()=> null,
           ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text("Feed Back"),
            onTap: ()=> null,
           ),
           
           Divider(),
           
           ListTile(
            leading: Icon(Icons.logout),
            title: Text("logout"),
            onTap: ()=> null,
           )
           


        ],
      ),
      

    );
  }
}