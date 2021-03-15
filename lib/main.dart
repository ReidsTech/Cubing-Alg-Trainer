import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '3x3 Page.dart';
import '2x2 Page.dart';
import '4x4 Page.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() => runApp(MaterialApp(home: Home()));

var height1 = 170.0;
var fontSize1 = 50.0;
var fontSize2 = 25.0;
var height = 160.0;
var minWidth = 50.0;
var fontSize = 17.0;
var all = false;
var edges = false;
var corners = false;
var both = false;

var white1 = false;
Color col1 = Colors.white;
var white2 = false;
Color col2 = Colors.white;
var white3 = false;
Color col3 = Colors.white;
var white4 = false;
Color col4 = Colors.white;
var white5 = false;
Color col5 = Colors.white;
var white6 = false;
Color col6 = Colors.white;
var white7 = false;
Color col7 = Colors.white;
var white8 = false;
Color col8 = Colors.white;
var white9 = false;
Color col9 = Colors.white;
var white10 = false;
Color col10 = Colors.white;

var shape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10.0),
);

class Storage {}

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.black,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: shape,
    backgroundColor: Colors.white);

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Home Page~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\

//The Main Widget
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  Animation animation,
      delayedAnimation,
      muchDelayedAnimation,
      veryDelayedAnimation,
      transformationAnim;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this);

    animation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.1, 1.0, curve: Curves.fastOutSlowIn)));

    delayedAnimation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.25, 1.0, curve: Curves.fastOutSlowIn)));

    muchDelayedAnimation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.40, 1.0, curve: Curves.fastOutSlowIn)));

    veryDelayedAnimation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.70, 1.0, curve: Curves.fastOutSlowIn)));

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
          title: Text("OLL and PLL Trainer"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent),
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/AppBG.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: AnimatedBuilder(
            animation: animationController,
            builder: (BuildContext context, Widget child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 5.0,
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Transform(
                          transform: Matrix4.translationValues(
                              animation.value * width, 0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: ButtonTheme(
                                minWidth: minWidth,
                                height: height1,
                                child: FlatButton(
                                    shape: shape,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => threexthree(),
                                        ),
                                      );
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              'assets/Curved 3x3.png'),
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        Text(
                                          "3x3",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: fontSize1,
                                            fontFamily: 'Oswald',
                                          ),
                                        ),
                                      ],
                                    ),
                                    color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        Transform(
                          transform: Matrix4.translationValues(
                              delayedAnimation.value * width, 0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: ButtonTheme(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                minWidth: minWidth,
                                height: height1,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => twoxtwo(),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                        image:
                                            AssetImage('assets/Curved 2x2.png'),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Text(
                                        "2x2",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: fontSize1,
                                            fontFamily: 'Oswald'),
                                      ),
                                    ],
                                  ),
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Transform(
                          transform: Matrix4.translationValues(
                              muchDelayedAnimation.value * width, 0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: ButtonTheme(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                minWidth: minWidth,
                                height: height1,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => fourxfour(),
                                      ),
                                    );
                                  },
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              'assets/Curved 4x4.png'),
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        Text(
                                          "4x4",
                                          style: TextStyle(
                                              fontSize: fontSize1,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Oswald'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  color: Colors.yellowAccent[700],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Transform(
                          transform: Matrix4.translationValues(
                              veryDelayedAnimation.value * width, 0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: ButtonTheme(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                minWidth: minWidth,
                                height: height1,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => fourxfour(),
                                      ),
                                    );
                                  },
                                  child: Center(
                                    child: Text(
                                      "Timer",
                                      style: TextStyle(
                                          fontSize: fontSize1,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald'),
                                    ),
                                  ),
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~3x3 Page~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\

//The 3x3 Page
class threexthree extends StatefulWidget {
  @override
  _threexthreeState createState() => _threexthreeState();
}

class _threexthreeState extends State<threexthree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("3x3 Algorithms"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/AppBG.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ButtonTheme(
                          minWidth: 200.0,
                          height: height,
                          child: TextButton(
                            style: flatButtonStyle,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => txtOLL(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage('assets/O_1br.png'),
                                ),
                                Text(
                                  "OLL Algorithms",
                                  style: TextStyle(
                                    fontSize: fontSize2,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Oswald',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), //OLL
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ButtonTheme(
                          minWidth: 125.0,
                          height: height,
                          child: TextButton(
                            style: flatButtonStyle,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DecidePLLPage(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage('assets/O_2 .png'),
                                ),
                                Text(
                                  "PLL Algorithms",
                                  style: TextStyle(
                                      fontSize: fontSize2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Oswald'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), //PLL
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ButtonTheme(
                          minWidth: 125.0,
                          height: height,
                          child: TextButton(
                            style: flatButtonStyle,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => txtELL(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage('assets/O_4.png'),
                                ),
                                Text(
                                  "ELL Algorithms",
                                  style: TextStyle(
                                      fontSize: fontSize2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Oswald'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), //ELL
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ButtonTheme(
                          minWidth: 125.0,
                          height: height,
                          child: TextButton(
                            style: flatButtonStyle,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => txtCLS(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage('assets/O_6.png'),
                                ),
                                Text(
                                  "CLS Algorithms",
                                  style: TextStyle(
                                      fontSize: fontSize2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Oswald'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), //CLS
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ButtonTheme(
                          minWidth: 125.0,
                          height: height,
                          child: TextButton(
                            style: flatButtonStyle,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => txtELS(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage('assets/O_7.png'),
                                ),
                                Text(
                                  "ELS Algorithms",
                                  style: TextStyle(
                                      fontSize: fontSize2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Oswald'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), //ELS
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ButtonTheme(
                          minWidth: 125.0,
                          height: height,
                          child: TextButton(
                            style: flatButtonStyle,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => txtCMLL(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage('assets/O_5.png'),
                                ),
                                Text(
                                  "CMLL Algorithms",
                                  style: TextStyle(
                                      fontSize: fontSize2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Oswald'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), //CMLL
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ButtonTheme(
                          minWidth: 125.0,
                          height: height,
                          child: TextButton(
                            style: flatButtonStyle,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => txtZBLL(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage('assets/O_8.png'),
                                ),
                                Text(
                                  "ZBLL Algorithms",
                                  style: TextStyle(
                                      fontSize: fontSize2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Oswald'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), //ZBLL
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~2x2 Page~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\

//The 2x2 Page
class twoxtwo extends StatefulWidget {
  @override
  _twoxtwoState createState() => _twoxtwoState();
}

class _twoxtwoState extends State<twoxtwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2x2 Algorithms"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/AppBG.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ButtonTheme(
                          minWidth: 200.0,
                          height: height,
                          child: TextButton(
                            style: flatButtonStyle,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OLL(),
                                ),
                              );
                              print(oalgs);
                            },
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage('assets/O_1br.png'),
                                ),
                                Text(
                                  "OLL Algorithms",
                                  style: TextStyle(
                                    fontSize: fontSize2,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Oswald',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), //OLL
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ButtonTheme(
                          minWidth: 125.0,
                          height: height,
                          child: TextButton(
                            style: flatButtonStyle,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PBL(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage('assets/O_2 .png'),
                                ),
                                Text(
                                  "PBL Algorithms",
                                  style: TextStyle(
                                      fontSize: fontSize2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Oswald'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), //PBL
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ButtonTheme(
                          minWidth: 125.0,
                          height: height,
                          child: TextButton(
                            style: flatButtonStyle,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CLL(),
                                ),
                              );
                            },
                            child: Row(children: [
                              Image(
                                image: AssetImage('assets/O_3.png'),
                              ),
                              Text(
                                "CLL Algorithms",
                                style: TextStyle(
                                    fontSize: fontSize2,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Oswald'),
                              ),
                            ]),
                          ),
                        ),
                      ), //CLL
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ButtonTheme(
                          minWidth: 125.0,
                          height: height,
                          child: TextButton(
                            style: flatButtonStyle,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EGO(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage('assets/O_4.png'),
                                ),
                                Text(
                                  "EG-1 Algorithms",
                                  style: TextStyle(
                                      fontSize: fontSize2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Oswald'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), //EG-1
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~4x4 Page~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\

//The 4x4 Page
class fourxfour extends StatefulWidget {
  @override
  _fourxfourState createState() => _fourxfourState();
}

class _fourxfourState extends State<fourxfour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("4x4 Algorithms"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/AppBG.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ButtonTheme(
                          minWidth: 200.0,
                          height: height,
                          child: TextButton(
                            style: flatButtonStyle,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => fxfOLL(),
                                ),
                              );
                              print(oalgs);
                            },
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage('assets/O_1br.png'),
                                ),
                                Text(
                                  "OLL Algorithms",
                                  style: TextStyle(
                                    fontSize: fontSize2,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Oswald',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), //OLL
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ButtonTheme(
                          minWidth: 125.0,
                          height: height,
                          child: TextButton(
                            style: flatButtonStyle,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => fxfPLL(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage('assets/O_2 .png'),
                                ),
                                Text(
                                  "PLL Algorithms",
                                  style: TextStyle(
                                      fontSize: fontSize2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Oswald'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ), //PLL
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Timer Page~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\\

//Timer Dropdown
class TimerDropDown extends StatefulWidget {
  TimerDropDown({Key key}) : super(key: key);

  @override
  _TimerDropDownState createState() => _TimerDropDownState();
}

class _TimerDropDownState extends State<TimerDropDown> {
  String dropdownValue = 'All';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
            ),
            margin: EdgeInsets.fromLTRB(10, 10, 10, 3),
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                SizedBox(width: 5),
                Text("Sort by "),
                SizedBox(width: 25.0),
                DropdownButton<String>(
                    value: dropdownValue,
                    dropdownColor: Colors.white,
                    focusColor: Colors.white,
                    elevation: 16,
                    style: TextStyle(color: Colors.black54),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>['All', 'Learning(the green ones)']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList()),
                SizedBox(width: 25),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Timer Page
class Timer extends StatefulWidget {
  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var height3 = AppBar().preferredSize.height;
    double height4 = MediaQuery.of(context).size.height - 110;
    double height5 = height4 - kToolbarHeight - height3;
    int milliseconds = 00;
    int seconds = 00;
    int minuets = 00;
    int hours = 00;
    var time = "$hours:$minuets:$seconds:$milliseconds";
    var started = false;
    var Tcolor = Colors.white;
    String stoptimetodisplay = "00:00:00:00";
    var swatch = Stopwatch();
    final dur = const Duration(seconds: 1);

    void keeprunning() {}

    void startstopwatch() {
      setState(() {
        swatch.start();
      });
    }

    void stopstopwatch() {
      setState(() {
        swatch.stop();
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Timer"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Container(
            height: 100.0,
            child: PLLDropDown(),
          ),
          SizedBox(
            height: 10.0,
          ),
          FlatButton(
            height: height5,
            minWidth: width,
            color: Tcolor,
            onPressed: () {
              setState(() {
                if (started == false) {
                  startstopwatch();
                  started = true;
                } else {
                  if (started == true) {
                    stopstopwatch();
                    started = false;
                  }
                }
              });
            },
            child: Center(
              child: Text(
                "$time",
                style: TextStyle(fontSize: 100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
