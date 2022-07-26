// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:memoria/screens/home/home.dart';
import 'package:memoria/widgets/starter_design.dart';
// import 'package:memoria/screens/home/home.dart';

class Snapshots extends StatefulWidget {
  const Snapshots({Key? key}) : super(key: key);

  @override
  State<Snapshots> createState() => _SnapshotsState();
}

class _SnapshotsState extends State<Snapshots> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StartingDesign("snapshots",
              "add memories that you would like to capture forever", "home"),
          homeButton(context, "HOME", "home"),
        ],
      ),
    );
  }
}
