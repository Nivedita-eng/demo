import 'package:flutter/material.dart';
import 'package:aalay/appscreen/new_bookings.dart';
import 'package:aalay/appscreen/my_bookings.dart';
import 'package:aalay/appscreen/Alerts.dart';
import 'package:aalay/appscreen/profile.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Tabs = [New(), MyBookings(), Alerts(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(


        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.black) ,
        selectedItemColor: Colors.black,
         unselectedItemColor: Colors.black,
        
        backgroundColor: Colors.black45,
        items: [
          BottomNavigationBarItem(icon: 
          Icon(Icons.add_circle_outline, color: Colors.black,), label:'New'),

          BottomNavigationBarItem(icon: 
          Icon(Icons.library_books, color: Colors.black,), label:'My Bookings'),

          BottomNavigationBarItem(icon: 
          Icon(Icons.add_alert, color: Colors.black,), label:'Alerts'),

          BottomNavigationBarItem(icon: 
          Icon(Icons.account_circle, color: Colors.black,), label:'Profile', ),
        ],

      ),

    );
  }
}
