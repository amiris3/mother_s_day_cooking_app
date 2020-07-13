import 'package:flutter/material.dart';
import 'package:mothersdaycookingapp/screens/choose_recipe_screen.dart';
import 'package:mothersdaycookingapp/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.orange[300],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/listOfRecipes' : (context) => ChooseRecipeScreen(),
      }
    );
  }
}


