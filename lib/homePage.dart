import 'package:flutter/material.dart';
import 'package:navigarionrail_widget/one.dart';
import 'package:navigarionrail_widget/two.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 int _selectedIndex= 0;
 final _pages =[One(),Two()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            onDestinationSelected: (value){
              setState(() {
                _selectedIndex=value;
              });
            },
            backgroundColor: Colors.black,
            labelType: NavigationRailLabelType.all,
            extended: false,
            destinations: 
            [
              NavigationRailDestination(
                icon: Icon(Icons.wifi,color: Colors.white,), 
                label: Text("Wifi"),
                selectedIcon: Icon(Icons.wifi,color: Colors.blue,)
                ),
                NavigationRailDestination(
                icon: Icon(Icons.wb_sunny,color: Colors.white,), 
                label: Text("Sun"),
                selectedIcon: Icon(Icons.wb_sunny,color: Colors.blue,)
                ),
                ],
            selectedIndex: _selectedIndex),
            Expanded(child: Container(
              child: _pages[_selectedIndex],
            ))
        ],
      ),
    );
  }
}