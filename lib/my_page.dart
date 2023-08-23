import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Page"),
        centerTitle: true,
        titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(children: [
             BoxWidget(height: 100, color: Colors.blueGrey),
             BoxWidget(height: 300, color: Colors.orange),
             BoxWidget(height: 200, color: Colors.red),
             BoxWidget(height: 500, color: Colors.blue),
             BoxWidget(height: 500, color: Colors.pink),
            ]),
          ),
        ),
      ),
    );
  }
}

class BoxWidget extends StatelessWidget {
  final double height;
  final Color color;
  const BoxWidget({super.key, required this.height, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
                height: height,
                color: color,
              ),
    );
  }
}
