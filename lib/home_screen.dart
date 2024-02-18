import 'dart:io';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Open in folder"),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            const path = "C:\\Users\\Godfred\\Saved Games";
            Process.run(
              "explorer",
              [path],
            );
          },
          child: const Text("open folder"),
        ),
      ),
    );
  }
}
