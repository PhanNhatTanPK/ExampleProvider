// import 'package:example_provider/src/domain/models/change_video2.dart';
// import 'package:example_provider/src/presentation/views/page_video2.dart';
import 'package:example_provider/src/domain/models/model_video3.dart';
import 'package:example_provider/src/presentation/providers/provider_video10.dart';
import 'package:example_provider/src/presentation/providers/provider_video3.dart';
import 'package:example_provider/src/presentation/views/add_page_video3.dart';
import 'package:example_provider/src/presentation/views/home-page_video10.dart';
import 'package:example_provider/src/presentation/views/home_page_video3.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:provider/provider.dart';

// import 'src/presentation/providers/change_video2.dart';

// import 'src/domain/models/data_model_video1.dart';
// import 'src/presentation/views/home_page_video1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderVideo10(),
      child: const MaterialApp(home: HomePageVideo10()),
    );
  }
}

// ! Example for video 3, link youtube: https://www.youtube.com/watch?v=SRHkYKBClUI&list=PL3nPgdhXQtHfFl-7fQRrzkKQbS5DPWl_x&index=8
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//         create: (context) => ProviderVideo3(),
//         child: const MaterialApp(home: AddPageVideo3()));
//   }
// }


// ! Example for video 2
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: [
//             Container(
//                 width: double.maxFinite,
//                 margin: const EdgeInsets.all(10),
//                 decoration: const BoxDecoration(
//                   shape: BoxShape.rectangle,
//                   color: Colors.blue,
//                   borderRadius: BorderRadius.all(Radius.circular(6)),
//                 ),
//                 child: Consumer<ChangeVideo2>(builder: (context, data, child) {
//                   return Consumer<ChangeVideo2>(
//                     builder: (context, data, child) => Text(
//                       "We are learning ${data.name}",
//                       // Provider.of<ChangeVideo2>(context).name,
//                       style: TextStyle(color: Colors.white, fontSize: 15),
//                     ),
//                   );
//                 })),
//             const PageVideo2(name: "abc"),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ! Example for video 1 in Flutter Profivder State Management tutorial.
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => DataModel(),
//       child: GetMaterialApp(
//           debugShowCheckedModeBanner: false,
//           title: 'Flutter Demo',
//           theme: ThemeData(
//             primarySwatch: Colors.blue,
//           ),
//           home: const HomePage()),
//     );
//   }
// }
