// import 'package:flutter/material.dart';

// class Indicator extends StatefulWidget {
//   const Indicator({super.key});
  

//   @override
//   State<Indicator> createState() => _IndicatorState();
// }

// class _IndicatorState extends State<Indicator> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: 20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           for (var i = 0; i < listOfColor.length; i++)
//             i == currentIndex
//                 ? Container(
//                     margin: EdgeInsets.symmetric(horizontal: 2),
//                     width: 24,
//                     height: 8,
//                     decoration: BoxDecoration(
//                       color: Color(0xff685CF0),
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                   )
//                 : Container(
//                     margin: EdgeInsets.symmetric(horizontal: 2),
//                     width: 8,
//                     height: 8,
//                     decoration: BoxDecoration(
//                       color: Colors.grey,
//                       shape: BoxShape.circle,
//                     ),
//                   ),

//           // ...listOfColor.map(
//           //   (e) {
//           //     return Container(
//           //       margin: EdgeInsets.symmetric(horizontal: 2),
//           //       width: 24,
//           //       height: 8,
//           //       decoration: BoxDecoration(
//           //         color: Color(0xff685CF0),
//           //         borderRadius: BorderRadius.circular(15),
//           //       ),
//           //     );
//           //   },
//           // ),
//         ],
//       ),
//     );
//   }
// }
