import 'package:clean_arc_movies/movies/presentation/screens/movies_screen.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MoviesScreen(),
                ));
          },
          child: const Text("Next"),
        ),
      ),
    );
  }
}
