import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'this is the title',
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AppBar Title')),
      body: Center(
        child: Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.only(top: 20),
          child: ActionChip(
            avatar: CircleAvatar(
              backgroundColor: Colors.grey.shade800,
              child: const Icon(
                Icons.facebook,
                color: Colors.red,
              ),
            ),
            label: Text("Codesinsider $_selectedIndex"),
            labelStyle: const TextStyle(color: Colors.deepOrange),
            onPressed: () {},
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.wifi_1_bar),
            label: 'this is may label 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'this is may label 1',
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
