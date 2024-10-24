// import 'dart:ui';

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Stack Widget Example'),
//         ),
//         body: Stack(
//           children: [
//             // Blurred background (you can replace this with an image)
//             Container(
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                   image: NetworkImage(
//                     'https://example.com/path/to/your/image.jpg',
//                   ),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               child: BackdropFilter(
//                 filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
//                 child: Container(
//                   color: Colors.black.withOpacity(0.3),
//                 ),
//               ),
//             ),
//             // Content in the foreground
//             Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Handle button press
//                 },
//                 child: const Text('Create story'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
