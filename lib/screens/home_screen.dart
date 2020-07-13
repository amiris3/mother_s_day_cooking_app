import 'package:flutter/material.dart';
import 'dart:math';
import 'package:sms/sms.dart';
import 'package:mothersdaycookingapp/models/recipe.dart';
import 'package:mothersdaycookingapp/screens/recipe_details_screen.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
        "assets/kitchen_font1.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text(
                        'Choisis une recette',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w300
                        ),
                ),
                padding: EdgeInsets.all(10),
                color: Color.fromRGBO(255, 236, 179, 1),
               shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(30.0),
                   side: BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid),
               ),
                onPressed: () {
                  Navigator.pushNamed(context, '/listOfRecipes');
                },
              ),
              SizedBox(height: 30),
              RaisedButton(
                child: Text('Recette au hasard',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w300
                    ),
                ),
                padding: EdgeInsets.all(10),
                color: Color.fromRGBO(255, 236, 179, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid),
                  ),
                  onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (_) => RecipeDetailsScreen(
                        recipe: _suggestRandomRecipe(),
                      ),
                    ),);
                },
              ),
              SizedBox(height: 30),
              RaisedButton(
                child: Text('Préviens les filles',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w300
                    ),
                ),
                padding: EdgeInsets.all(10),
                color: Color.fromRGBO(255, 236, 179, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid),
                ),
                onPressed: () => _tellTheGirls(),
              ),
            ],
          ),
        ),
      ),
      ],
    );
  }

  _suggestRandomRecipe() {
    Random rand = new Random();
    int n = rand.nextInt(recipes.length);
    return recipes[n];
  }

  _tellTheGirls() {
      SmsSender sender = new SmsSender();
      sender.sendSms(new SmsMessage("0123456789", 'A table !'));
      sender.sendSms(new SmsMessage('0987654321', 'A table !'));
  }

}