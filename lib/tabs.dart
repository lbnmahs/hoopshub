import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});
  @override
  State<Tabs> createState() {
    return _TabsState();
  }
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HoopsHub'),
        forceMaterialTransparency: true,
      ),
      body: const Center(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int page) {},
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.west_rounded),
            label: 'Western Conference',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.east_rounded),
            label: 'Eastern Conference',
          ),
        ]
      ),
    );
  }
}
