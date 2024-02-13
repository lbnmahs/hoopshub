import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});
  @override
  State<HomeTab> createState() {
    return _HomeTabState();
  }
}

class _HomeTabState extends State<HomeTab> {
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
