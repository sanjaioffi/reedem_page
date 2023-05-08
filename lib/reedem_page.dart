import 'package:flutter/material.dart';

class ReedemPage extends StatefulWidget {
  const ReedemPage({super.key});

  @override
  State<ReedemPage> createState() => _ReedemPageState();
}

class _ReedemPageState extends State<ReedemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffae7fe8), Color(0xff6653d0)],
                  stops: [0, 1],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
        ),
        bottom: const TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
              text: "Camera",
            ),
            Tab(
              icon: Icon(Icons.photo_library),
              text: "Photos",
            ),
          ],
        ),
      ),
    );
  }
}
