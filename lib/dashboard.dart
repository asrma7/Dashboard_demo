import 'package:flutter_web/material.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  _DashboardState createState() => _DashboardState();
}

Widget _getHeader(context) {
  if (MediaQuery.of(context).size.width <= 600) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: Colors.lightBlue[300],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: RaisedButton(
                  child: Text(
                    "Today",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.blue[900],
                  onPressed: () {},
                ),
              ),
              RaisedButton(
                child: Text(
                  "Month",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                color: Colors.blue[900],
                onPressed: () {},
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: RaisedButton(
                  child: Text(
                    "Year",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.blue[900],
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        Text(
          _getMonth() +
              ", " +
              DateTime.now().day.toString() +
              "th " +
              DateTime.now().year.toString(),
          textAlign: TextAlign.end,
          style: TextStyle(letterSpacing: 1.2, fontSize: 20.0),
        ),
      ],
    );
  } else {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: Colors.lightBlue[300],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: RaisedButton(
                  child: Text(
                    "Today",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.blue[900],
                  onPressed: () {},
                ),
              ),
              RaisedButton(
                child: Text(
                  "Month",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                color: Colors.blue[900],
                onPressed: () {},
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: RaisedButton(
                  child: Text(
                    "Year",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.blue[900],
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        Text(
          _getMonth() +
              ", " +
              DateTime.now().day.toString() +
              "th " +
              DateTime.now().year.toString(),
          textAlign: TextAlign.end,
          style: TextStyle(letterSpacing: 1.2, fontSize: 20.0),
        ),
      ],
    );
  }
}

String _getMonth() {
  switch (DateTime.now().month.toString()) {
    case "1":
      return "Jan";
    case "2":
      return "Feb";
    case "3":
      return "Mar";
    case "4":
      return "Apr";
    case "5":
      return "May";
    case "6":
      return "Jun";
    case "7":
      return "Jul";
    case "8":
      return "Aug";
    case "9":
      return "Sep";
    case "10":
      return "Oct";
    case "11":
      return "Nov";
    case "12":
      return "Dec";
    default:
      return DateTime.now().month.toString();
  }
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _getHeader(context),
        Expanded(
          child: GridView(
            padding: EdgeInsets.only(top: 20.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width >= 1300
                    ? 3
                    : MediaQuery.of(context).size.width >= 700 ? 2 : 1),
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(40.0),
                elevation: 3.0,
                color: Colors.lightGreen[200],
                child: Center(
                  child: Text(
                    "Tile 1",
                    style: TextStyle(color: Colors.green[900], fontSize: 30.0),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(40.0),
                elevation: 3.0,
                color: Colors.lightBlue[200],
                child: Center(
                  child: Text(
                    "Tile 2",
                    style: TextStyle(color: Colors.blue[900], fontSize: 30.0),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(40.0),
                elevation: 3.0,
                color: Colors.orange[200],
                child: Center(
                  child: Text(
                    "Tile 3",
                    style: TextStyle(
                        color: Colors.deepOrange[900], fontSize: 30.0),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(40.0),
                elevation: 3.0,
                color: Colors.purple[200],
                child: Center(
                  child: Text(
                    "Tile 4",
                    style: TextStyle(
                        color: Colors.deepPurple[900], fontSize: 30.0),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(40.0),
                elevation: 3.0,
                color: Colors.brown[200],
                child: Center(
                  child: Text(
                    "Tile 5",
                    style: TextStyle(color: Colors.brown[900], fontSize: 30.0),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(40.0),
                elevation: 3.0,
                color: Colors.amber[200],
                child: Center(
                  child: Text(
                    "Tile 6",
                    style: TextStyle(color: Colors.orange[900], fontSize: 30.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
