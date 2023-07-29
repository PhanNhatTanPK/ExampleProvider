import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/change_video2.dart';

class PageVideo2 extends StatelessWidget {
  final String name;
  const PageVideo2({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<ChangeVideo2>(context, listen: false).changeValue(name);
      },
      child: Container(
        width: double.maxFinite,
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        child: Text(
          name,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
