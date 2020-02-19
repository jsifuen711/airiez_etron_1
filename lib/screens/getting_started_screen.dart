import 'package:flutter/material.dart';
import '../widgets/slide_item.dart';

// added a stateless widget and body & child with center screen
class GettingStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      REMOVED APP BAR
//      appBar: AppBar(
//        title: Text('Home'),
//      ),
      body: Container(
        color: Colors.white,
//        background color above
        child: Padding(
//        padding was wrapped with container to provide white background
          padding: const EdgeInsets.all(20.0),
          child: Column(
//        this Column was changed/wrapped with padding for entire page view
            children: <Widget>[
              Expanded(
                child: SlideItem(),
              ),
//     This adds space between the rows of widgets added
              SizedBox(
                height: 20.0,
              ),
              Column(
//            this cross axis stretches the button
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
//              change this button to make a better UI
                  FlatButton(
                    child: Text(
                      'Getting Started',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(15),
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Have an account?',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
//                      added on pressed method for clicking the login button
                      FlatButton(
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
