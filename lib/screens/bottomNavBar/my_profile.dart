

import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage('https://i.pinimg.com/474x/4f/f8/e3/4ff8e36230bc709e8f48c75c7b4d0466.jpg'), // Replace with actual image URL
              ),
              SizedBox(height: 16),
              Card(
                elevation: 4,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Icon(Icons.person, color: Colors.deepPurple),
                  title: Text('Name'),
                  subtitle: Text('Sai Pallavi'),
                ),
              ),
              Card(
                elevation: 4,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.deepPurple),
                  title: Text('Email'),
                  subtitle: Text('Saipallavi@gmail.com'),
                ),
              ),
              Card(
                elevation: 4,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.deepPurple),
                  title: Text('Phone number'),
                  subtitle: Text('923947234322'),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'About Me',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vehicula justo at neque facilisis, ac tincidunt odio suscipit.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



