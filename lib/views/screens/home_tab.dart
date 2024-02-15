import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});
  @override
  State<HomeTab> createState() {
    return _HomeTabState();
  }
}

class _HomeTabState extends State<HomeTab> {
  int _currentIndex = 0;

  void _selectTab(int index) {
    setState(() { _currentIndex = index; });
  }
  
  @override
  Widget build(BuildContext context) {
    if(_currentIndex == 1) {}
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('HoopsHub'),
        forceMaterialTransparency: true,
      ),
      body: const Center(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectTab,
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
