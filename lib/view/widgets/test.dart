// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       slivers: [
//         SliverList(
//           delegate: SliverChildListDelegate([
//             const SliverToBoxAdapter(
//               child: SliverAppBar(
//                   // app bar content
//                   ),
//             ),
//             SliverPadding(
//               padding: const EdgeInsets.all(20),
//               sliver: SliverGrid(
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   mainAxisSpacing: 10,
//                   crossAxisSpacing: 10,
//                   childAspectRatio: 4,
//                 ),
//                 delegate: SliverChildListDelegate([
//                   // grid items...
//                 ]),
//               ),
//             ),
//           ]),
//         ),
//       ],
//     );
//   }
// }
