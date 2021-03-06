// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:memoria/screens/home/face_search.dart';

class Faces extends StatefulWidget {
  const Faces({Key? key}) : super(key: key);

  @override
  State<Faces> createState() => _FacesState();
}

class _FacesState extends State<Faces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PEOPLE'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Text(
              "MEET YOUR NEAR AND DEAR ONES!",
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(5),
                  child: ElevatedButton(
                    child: Icon(
                      Icons.add,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FaceSearch()));
                    },
                  ),
                ),
                FaceButton(),
                FaceButton(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                FaceButton(),
                FaceButton(),
                FaceButton(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FaceButton(),
                FaceButton(),
                FaceButton(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FaceButton(),
                FaceButton(),
                FaceButton(),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class FaceButton extends StatelessWidget {
  const FaceButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 100,
      height: 100,
      child: ElevatedButton(
        child: Stack(
          children: const [
            Image(
              image: AssetImage("assets/Sharat.png"),
              fit: BoxFit.fill,
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Text(
                "SHARAT",
              ),
            ),
          ],
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/faceProfile');
        },
      ),
    );
  }
}
