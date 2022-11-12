// import 'package:clean_arc_movies/movies/presentation/screens/movies_screen.dart';
import 'package:clean_arc_movies/core/services/services_locator.dart';
import 'package:clean_arc_movies/test.dart';
import 'package:flutter/material.dart';


void main() async {
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

     return const MaterialApp(
       debugShowCheckedModeBanner: false,
       title: "Movie App",
       home: Test(),
     );
  }
}
