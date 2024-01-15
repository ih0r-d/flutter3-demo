import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // const textWidget = Text(
    //   "Hello, flutter!",
    //   style: TextStyle(
    //       color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
    // );
    const iconWidget = Icon(
      Icons.favorite_border_rounded,
      color: Colors.white,
      size: 64,
    );
    // var centerWidget = Center(
    //   child: Container(
    //     height: 300,
    //     width: 300,
    //     decoration: BoxDecoration(
    //         color: Colors.grey, borderRadius: BorderRadius.circular(25)),
    //     padding: const EdgeInsets.all(50),
    //     // child: textWidget,
    //     child: iconWidget,
    //   ),
    // );

// Column, Row
//     var columnsWidget = Column(
//       // scrollDirection: Axis.horizontal,
//       children: [
//         Container(height: 350, color: Colors.deepPurple),
//         Container(height: 350, color: Colors.deepPurple[400]),
//         Container(height: 350, color: Colors.deepPurple[200]),
//       ],
//     );
//
    // var bodyWidget = ListView.builder(
    //   itemCount: 10,
    //   itemBuilder: (context,index) => ListTile(
    //     title: Text(index.toString()),
    //   ),
    // );

    // var bodyWidget = GridView.builder(
    //     itemCount: 64,
    //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
    //     itemBuilder: (context,index) => Container(
    //       color: Colors.grey,
    //       margin: const EdgeInsets.all(2),
    //     )
    // );

    // var bodyWidget = Stack(
    //   alignment: Alignment.bottomCenter,
    //   children: [
    //     Container(
    //       height: 300,
    //       width: 300,
    //       color: Colors.deepOrange,
    //     ),
    //     Container(
    //       height: 200,
    //       width: 200,
    //       color: Colors.deepOrange[400],
    //     ),
    //     Container(
    //       height: 100,
    //       width: 100,
    //       color: Colors.deepOrange[100],
    //     ),
    //   ],
    // );
    //
    // void userTapped() {
    //   print("User tapped.");
    // }
    //
    // var scaffold = Scaffold(
    //     backgroundColor: Colors.lightBlueAccent,
    //     appBar: AppBar(
    //       title: textWidget,
    //       backgroundColor: Colors.deepOrange,
    //       elevation: 0,
    //       leading: const Icon(Icons.menu),
    //       actions: [
    //         IconButton(onPressed: () {}, icon: const Icon(Icons.logout))
    //       ],
    //     ),
    //     body: Center(
    //       child: GestureDetector(
    //         onTap: () => userTapped(),
    //         child: Container(
    //           height: 200,
    //           width: 200,
    //           color: Colors.deepOrange[300],
    //           child: const Center(
    //               child: Text(
    //             "Tap me!",
    //             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    //           )),
    //         ),
    //       ),
    //     ),
    //   );
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // routes: {
      //   '/': (context) => const FirstScreen(),
      //   '/second': (context) => const SecondScreen(),
      // },
    );
  }
}
