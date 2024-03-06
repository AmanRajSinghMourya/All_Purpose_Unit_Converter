import 'package:flutter/material.dart';
import 'package:project_1/Pages/homepage.dart';
import 'package:project_1/Modal_Data/converterdata.dart';

class OptionPage extends StatefulWidget {
  const OptionPage({super.key});

  @override
  State<OptionPage> createState() => _OptionPageState();
}

class _OptionPageState extends State<OptionPage> {
  GlobalKey<ScaffoldState> gkey = GlobalKey<ScaffoldState>();
  var isDarkMode = false;
  var light = ThemeData.light(
    useMaterial3: true,
  );
  var dark = ThemeData.dark();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    void onChange() {
      setState(() {
        isDarkMode = !isDarkMode;
      });
      print(isDarkMode);
    }

    return Scaffold(
      key: gkey,
      backgroundColor: isDarkMode
          ? Colors.black.withOpacity(0.5)
          : Colors.white.withOpacity(0.9),
      appBar: AppBar(
        // leading: Icon(
        //   Icons.menu,
        //   size: 30,
        //   color: isDarkMode ? Colors.white : Colors.black,
        // ),
        title: Text(
          "Unit Converter",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: isDarkMode
            ? Colors.black.withOpacity(0.5)
            : Colors.white.withOpacity(0.1),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 30,
              width: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: IconButton(
                  icon: Icon(
                    Icons.wb_sunny,
                    color: isDarkMode ? Colors.white : Colors.black,
                    size: 20,
                  ),
                  onPressed: () {
                    onChange();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: isDarkMode
                  ? darakLayout(height: height, context: context)
                  : lightLayout(height: height, context: context),
            ),
          ],
        ),
      ),
    );
  }
}

Widget lightLayout({height, context}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          button2(
            height: height,
            titletext: "Area",
            imagename: 'assets/area32.png',
            context: context,
            pagename: HomePage(
              convertername: "Area",
              gradientcolor: colormap["Area"],
            ),
          ),
          button2(
            height: height,
            titletext: "Data",
            imagename: 'assets/binary_black.png',
            context: context,
            pagename: HomePage(
              convertername: "Data",
              gradientcolor: colormap["Data"],
            ),
          ),
        ],
      ),
      Row(
        children: [
          button2(
            height: height,
            titletext: "Currency",
            imagename: 'assets/dollar32w.png',
            context: context,
            pagename: HomePage(
              convertername: "Currency",
              gradientcolor: colormap["Currency"],
            ),
          ),
          button2(
            height: height,
            titletext: "Temprature",
            imagename: 'assets/temprature32.png',
            context: context,
            pagename: HomePage(
              convertername: "Temprature",
              gradientcolor: colormap["Temprature"],
            ),
          ),
        ],
      ),
      Row(
        children: [
          button2(
            height: height,
            titletext: "Volume",
            imagename: 'assets/flask64.png',
            context: context,
            pagename: HomePage(
              convertername: "Volume",
              gradientcolor: colormap["Volume"],
            ),
          ),
          button2(
            height: height,
            titletext: "Weight",
            imagename: 'assets/dumbbells64.png',
            context: context,
            pagename: HomePage(
              convertername: "Weight",
              gradientcolor: colormap["Weight"],
            ),
          ),
        ],
      ),
      Row(
        children: [
          button2(
            height: height,
            titletext: "Time",
            imagename: 'assets/clock.png',
            context: context,
            pagename: HomePage(
              convertername: "Time",
              gradientcolor: colormap["Time"],
            ),
          ),
          button2(
            height: height,
            titletext: "Mileage",
            imagename: 'assets/fuelstation32.png',
            context: context,
            pagename: HomePage(
              convertername: "Mileage",
              gradientcolor: colormap["Mileage"],
            ),
          ),
        ],
      ),
      Row(
        children: [
          button2(
            height: height,
            titletext: "Length",
            imagename: 'assets/height32.png',
            pagename: HomePage(
              convertername: "Length",
              gradientcolor: colormap["Length"],
            ),
            context: context,
          ),
          button2(
            height: height,
            titletext: "Power",
            imagename: 'assets/power32.png',
            context: context,
            pagename: HomePage(
              convertername: "Power",
              gradientcolor: colormap["Power"],
            ),
          ),
        ],
      ),
      Row(
        children: [
          button2(
            height: height,
            titletext: "Speed",
            imagename: 'assets/speed.png',
            context: context,
            pagename: HomePage(
              convertername: "Speed",
              gradientcolor: colormap["Speed"],
            ),
          ),
          button2(
            height: height,
            titletext: "Pressure",
            imagename: 'assets/pressure-gauge64.png',
            context: context,
            pagename: HomePage(
              convertername: "Pressure",
              gradientcolor: colormap["Pressure"],
            ),
          ),
        ],
      ),
    ],
  );
}

Widget darakLayout({height, context}) {
  return Column(
    children: [
      Row(
        children: [
          button1(
            height: height,
            titletext: "Area",
            imagename: 'assets/area32.png',
            context: context,
            pagename: HomePage(
              convertername: "Area",
              gradientcolor: colormap["Area"],
            ),
          ),
          button1(
            height: height,
            titletext: "Data",
            imagename: 'assets/binary_white.png',
            context: context,
            pagename: HomePage(
              convertername: "Data",
              gradientcolor: colormap["Data"],
            ),
          ),
        ],
      ),
      Row(
        children: [
          button1(
            height: height,
            titletext: "Currency",
            imagename: 'assets/dollar32w.png',
            context: context,
            pagename: HomePage(
              convertername: "Currency",
              gradientcolor: colormap["Currency"],
            ),
          ),
          button1(
            height: height,
            titletext: "Temprature",
            imagename: 'assets/temprature32.png',
            context: context,
            pagename: HomePage(
              convertername: "Temprature",
              gradientcolor: colormap["Temprature"],
            ),
          ),
        ],
      ),
      Row(
        children: [
          button1(
            height: height,
            titletext: "Volume",
            imagename: 'assets/flask64.png',
            context: context,
            pagename: HomePage(
              convertername: "Volume",
              gradientcolor: colormap["Volume"],
            ),
          ),
          button1(
            height: height,
            titletext: "Time",
            imagename: 'assets/clock.png',
            context: context,
            pagename: HomePage(
              convertername: "Time",
              gradientcolor: colormap["Time"],
            ),
          ),
        ],
      ),
      Row(
        children: [
          button1(
            height: height,
            titletext: "Mileage",
            imagename: 'assets/fuelstation32.png',
            context: context,
            pagename: HomePage(
              convertername: "Mileage",
              gradientcolor: colormap["Mileage"],
            ),
          ),
          button1(
            height: height,
            titletext: "Speed",
            imagename: 'assets/speed.png',
            context: context,
            pagename: HomePage(
              convertername: "Speed",
              gradientcolor: colormap["Speed"],
            ),
          ),
        ],
      ),
      Row(
        children: [
          button1(
            height: height,
            titletext: "Length",
            imagename: 'assets/height32.png',
            pagename: HomePage(
              convertername: "Length",
              gradientcolor: colormap["Length"],
            ),
            context: context,
          ),
          button1(
            height: height,
            titletext: "Power",
            imagename: 'assets/power32.png',
            context: context,
            pagename: HomePage(
              convertername: "Power",
              gradientcolor: colormap["Power"],
            ),
          ),
        ],
      ),
      Row(
        children: [
          button1(
            height: height,
            titletext: "Pressure",
            imagename: 'assets/pressure-gauge64.png',
            context: context,
            pagename: HomePage(
              convertername: "Pressure",
              gradientcolor: colormap["Pressure"],
            ),
          ),
          button1(
            height: height,
            titletext: "Weight",
            imagename: 'assets/dumbbells64.png',
            context: context,
            pagename: HomePage(
              convertername: "Weight",
              gradientcolor: colormap["Weight"],
            ),
          ),
        ],
      ),
    ],
  );
}

Widget button2({height, titletext, imagename, context, pagename}) {
  return Expanded(
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pagename),
        );
      },
      child: Card(
        color: Colors.white70,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imagename,
                  width: 50.0,
                  height: 50.0,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  titletext,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Widget button1({height, titletext, imagename, context, pagename}) {
  return Expanded(
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pagename),
        );
      },
      child: Card(
        color: Color.fromARGB(255, 21, 21, 21),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imagename,
                  width: 50.0,
                  height: 50.0,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  titletext,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 5.0,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Widget button({height, titletext, imagename, context, pagename}) {
  return Expanded(
    child: Container(
      height: height * 0.15,
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.all(8),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => pagename),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagename,
              height: 50,
              width: 50,
            ),
            Center(
              child: Text(
                titletext,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget two({imagename}) {
  return SizedBox(
    width: 140,
    height: 140,
    child: InkWell(
      onTap: () {},
      child: Card(
        color: Color.fromARGB(255, 21, 21, 21),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imagename,
                  width: 64.0,
                  scale: 0.7,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Driver",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 5.0,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

class ClipPath1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    var heightoffset = height * 0.5;

    Path path = Path();
    path.lineTo(0, height);
    path.quadraticBezierTo(width * 0.5, height, width, height - heightoffset);

    path.lineTo(width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
