import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyFirstProject(),
    );
  }
}

class MyFirstProject extends StatelessWidget {
  const MyFirstProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My First Project",
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'Suwannaphum-Regular',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20.0,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20.0,
            children: [
              Expanded(
                child: Image.asset(
                  'assets/png/black_cat.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Image.network(
                  'https://th.bing.com/th/id/R.043f9ac4a9b6fcb023c2b86bc20f89a0?rik=eeedgvNCxid0Vg&pid=ImgRaw&r=0',
                  width: double.infinity,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const CircularProgressIndicator();
                  },
                ),
              ),
            ],
          ),
          const Text(
            "The two images are displayed",
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Suwannaphum-Regular',
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
