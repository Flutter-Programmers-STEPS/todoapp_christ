import 'package:flutter/material.dart';
import 'helper/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
     theme: ThemeData(
       primarySwatch: Colors.pink,
         brightness: Brightness.light,
         primaryColor: Colors.pink,
     ),

      home: SplashScreen(),
    );
  }
}

//
// import 'package:flutter/material.dart';
// import 'package:scratcher/scratcher.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   final scratchKey = GlobalKey<ScratcherState>();
//
//   double _opacity = 0.0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//                 onPressed: () {
//                   scratchDialog(context);
//                 },
//                 child: Text('Show Dialog for Reward')),
//             ElevatedButton(
//                 onPressed: () {
//                   scratchKey.currentState
//                       ?.reset(duration: Duration(milliseconds: 2000));
//                 },
//                 child: Text('Reset')),
//             ElevatedButton(
//                 onPressed: () {
//                   scratchKey.currentState
//                       ?.reveal(duration: Duration(milliseconds: 2000));
//                 },
//                 child: Text('Reveal'))
//           ],
//         ),
//       ),
//     );
//   }
//
//   Future<void> scratchDialog(BuildContext context) async {
//     return showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30)),
//               title: const Align(
//                 alignment: Alignment.center,
//                 child: Text('You earned a reward..!!'),
//               ),
//               content: StatefulBuilder(
//                 builder: (context, StateSetter setState) {
//                   return Scratcher(
//                     accuracy: ScratchAccuracy.medium,
//                     threshold: 50,
//                     onThreshold: () {
//                       setState(() {
//                         _opacity = 1;
//                       });
//                     },
//                     color: Colors.redAccent,
//                     onChange: (value) => print('Progress $value%'),
//                     brushSize: 20,
//                     child: AnimatedOpacity(
//                       duration: Duration(milliseconds: 1000),
//                       opacity: _opacity,
//                       child: Container(
//                           width: 150,
//                           height: 150,
//                           child: const Image(
//                               image: AssetImage('assets/reward.png'))),
//                     ),
//                   );
//                 },
//               ));
//         });
//   }
// }

