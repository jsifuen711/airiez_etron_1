import 'package:flutter/material.dart';

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 220.0,
                      height: 220.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/octo.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
//     This adds space between the rows of widgets added
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      'Airiez Etron',
                      style: TextStyle(
                        fontSize: 35.0,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
//     This adds space between the rows of widgets added
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Welcome to Airiez Etron App. Through this app we here At '
                      'Airiez are developing some pretty cool stuff.'
                      ' Hope you enjoy our work as much as we enjoy doing it.',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
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
                      FlatButton(
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 18),
                        ),
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
