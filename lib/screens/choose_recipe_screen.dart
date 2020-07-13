import 'package:flutter/material.dart';
import 'package:mothersdaycookingapp/widgets/recipes_list.dart';

class ChooseRecipeScreen extends StatefulWidget {
  ChooseRecipeScreen();

  @override
  _ChooseRecipeScreenState createState() => _ChooseRecipeScreenState();
}

class _ChooseRecipeScreenState extends State<ChooseRecipeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Liste de recettes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  RecipesList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}