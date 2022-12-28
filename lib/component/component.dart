import 'package:flutter/material.dart';

// Widget ListTileItem({
//   required String title,
//   required Icon leading_Icon,
//   Icon thriling_icon = const Icon(
//     Icons.arrow_forward_ios,
//     color: Colors.black,
//     size: 18,
//   ),
// }) =>
//     InkWell(
//       onTap: () {},
//       child: ListTile(
//         title: Text(
//           title,
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         leading: leading_Icon,
//         trailing: thriling_icon,
//       ),
//     );


 navigateTo(BuildContext context, page) => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => page()));