import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share/share.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

abstract class SuccessPage extends StatefulWidget {
  final String title;

  SuccessPage(this.title, {Key key}) : super(key: key);

  @override
  _SuccessPage createSuccess() => _SuccessPage();
}

class _SuccessPage extends State<SuccessPage> {
  var rating = 5.0;
  int selectedPos = 0;

  final _formKey = GlobalKey<FormState>();

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      _viewSuccess(),
    ];
  }

  Widget _viewSuccess() {
    return Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(32.0),
              child: Text("@SeuNome",
                  style: Theme.of(context)
                      .textTheme
                      .display4
                      .copyWith(fontSize: 24.0)),
            ),
            Padding(
              padding: EdgeInsets.all(32.0),
              child: Text("@NomeAvaliado",
                  style: Theme.of(context)
                      .textTheme
                      .display4
                      .copyWith(fontSize: 24.0)),
            ),
            SmoothStarRating(
                allowHalfRating: true,
                starCount: 5,
                rating: rating,
                size: 48.0,
                color: Colors.deepPurple,
                borderColor: Colors.purple,
                spacing: 0.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.facebook,
                        color: Color.fromARGB(255, 59, 89, 152),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        "Facebook",
                        style: TextStyle(
                          color: Color.fromARGB(255, 59, 89, 152),
                        ),
                      ),
                    ],
                  ),
                ),
                FlatButton(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.twitter,
                        color: Color.fromARGB(255, 0, 132, 180),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        "Twitter",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 132, 180),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Share.share("Vejam meu perfil no Stellae");
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.shareAlt,
                        color: Colors.purple,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "Compartilhar",
                        style: TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
