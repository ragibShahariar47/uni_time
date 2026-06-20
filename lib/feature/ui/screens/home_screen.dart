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
          BottomNavigationBarItem(label: 'Home', icon: Column(
            children: [
              Icon(Icons.home),
              currentIndex == 0 ? SizedBox() : Text(
                'home', style: TextStyle(color: Colors.grey),)
            ],
          ),),
          BottomNavigationBarItem(label: 'routine', icon:Column(
            children: [
              Icon(Icons.schedule),
              currentIndex == 1 ? SizedBox() : Text(
                'routine', style: TextStyle(color: Colors.grey),)
            ],
          ),),
          BottomNavigationBarItem(label: 'event', icon: Column(
            children: [
              Icon(Icons.event),
              currentIndex == 2 ? SizedBox() : Text(
                'event', style: TextStyle(color: Colors.grey),)
            ],
          ),),
          BottomNavigationBarItem(label: 'settings', icon: Column(
            children: [
              Icon(Icons.settings),
              currentIndex == 3 ? SizedBox() : Text(
                'settings', style: TextStyle(color: Colors.grey),)
            ],
          ),),
        ],
      ),
    );
  }
}
