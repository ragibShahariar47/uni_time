import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomeScreen')),
      body: Center(child: Text('body')),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        elevation: 20,
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home),),
          BottomNavigationBarItem(label: 'routine', icon: Icon(Icons.map)),
          BottomNavigationBarItem(label: 'event', icon: Icon(Icons.event)),
          BottomNavigationBarItem(label: 'settings', icon: Icon(Icons.settings)),
        ],
      ),
    );
  }
}
