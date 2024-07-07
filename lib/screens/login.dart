import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/screens/homepage.dart';

// Suggested code may be subject to a license. Learn more: ~LicenseLog:613609513.
class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.brown,
        title: Text("Golden Treasure",style: GoogleFonts.lobster(
  fontSize: 28,
  color: Colors.white),
      ),),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Expanded(
              child: Image.network(
                
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsupZRr9uWE0a0bJcQSFoG-HkKpbYj_d2bk2WErNBq4ICMSzoIJtVMiX6PqFYdeI6Wcig&usqp=CAU",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome to Login Page",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: "Enter your Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'password',
                    hintText: "Enter your password",
                    suffixIcon: Icon(Icons.visibility_off),
                    

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )

                  )
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                   child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 20),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    
                    shape: RoundedRectangleBorder(
                      
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                  });
                             
                  },
                 
                ),

                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
