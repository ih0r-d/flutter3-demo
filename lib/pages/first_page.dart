import 'package:beginner/pages/home.dart';
import 'package:beginner/pages/profile.dart';
import 'package:beginner/pages/settings.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<StatelessWidget> _screens = [
     const HomeScreen(),
     const ProfileScreen(),
     const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // var drawerMenu = Drawer(
    //   width: 200,
    //   backgroundColor: Colors.greenAccent[100],
    //   child: Column(
    //     children: [
    //       const DrawerHeader(
    //         child: Icon(
    //           Icons.account_box,
    //           size: 48,
    //         ),
    //       ),
    //       ListTile(
    //         leading: const Icon(Icons.home),
    //         title: const Text("H O M E"),
    //         onTap: () {
    //           Navigator.pop(context);
    //           Navigator.pushNamed(context, '/home');
    //         },
    //       ),
    //       ListTile(
    //         leading: const Icon(Icons.settings),
    //         title: const Text("S E T T I N G S"),
    //         onTap: () {
    //           Navigator.pushNamed(context, '/settings');
    //         },
    //       ),
    //     ],
    //   ),
    // );
    // var centerBody = Center(
    //     child: ElevatedButton(
    //       onPressed: () {
    //         Navigator.push(
    //             context,
    //             MaterialPageRoute(
    //                 builder: (context) => const SecondScreen()
    //             )
    //         );
    //         // todo: check why routes catch an error
    //         // Navigator.pushNamed(context, '/second');
    //       },
    //       child: const Text("Go to 2nd page"),
    //     ),
    //   );

    return Scaffold(
      appBar: AppBar(title: const Text("1st page")),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: const [
          //home
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          //profile
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'
          ),
          //settings
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings'
          ),
        ],
      ),
      // drawer: drawerMenu,
      // body: centerBody,
    );
  }
}
