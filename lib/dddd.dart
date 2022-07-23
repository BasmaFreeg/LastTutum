import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:tutumapp/SvgIcons.dart';

void main() {
  runApp(MaterialApp(home: MyHomePage()));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

List<String> pills = [
  'images/pill-1-svgrepo-com.svg',
  'images/pill-svgrepo-com.svg',
  'images/apple-with-big-bite-svgrepo-com.svg',
  'images/bottle-with-bubbles-svgrepo-com.svg',
  'images/bottle-with-bubbles-svgrepo-com.svg',
  'images/bottle-with-bubbles-svgrepo-com.svg',
  'images/bottle-with-bubbles-svgrepo-com.svg',
  'images/bottle-with-bubbles-svgrepo-com.svg',
  'images/bottle-with-bubbles-svgrepo-com.svg',
];

List mycolorss = <Color>[
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.purple,
  Colors.orange,
  Colors.indigo,
  Colors.pink,
  Colors.deepOrangeAccent,
  Colors.brown,
  Colors.amber,
  Colors.grey,
];

Color primaryColor = mycolorss[0];
int selected = 0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pill Color"),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          Icon(Icons.keyboard_arrow_down_rounded),
          Stack(
            children: [
              buildImage(),
            ],
          ),
          Stack(
            children: [
              buildColorIcons(),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildImage() => Container(
        color: Colors.black12,
        width: MediaQuery.of(context).size.width,
        height: 40,
        child: ScrollSnapList(
          itemBuilder: (context, index) => SvgPicture.asset(
            pills[index],
            color: index == selected ? primaryColor : Colors.black,
            width: 30,
            height: 30,
          ), //pillIcon(index == selected ? primaryColor : Colors.black ),
          itemSize: 30,
          dynamicItemSize: true,
          //itemCount: 30,
          onItemFocus: (index) {
            print("Center is $index + $primaryColor ");
            setState(() {
              selected = index;
            });
          },
          itemCount: pills.length,
        ),
      );

  Widget buildColorIcons() => Positioned(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (var i = 0; i < mycolorss.length; i++)
                buildIconBtn(mycolorss[i])
            ],
          ),
        ),
      );

  Widget buildIconBtn(Color myColor) => Container(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 12.5,
                left: 12.5,
                child: Icon(
                  Icons.check,
                  size: 20,
                  color: primaryColor == myColor ? myColor : Colors.transparent,
                ),
              ),
              SingleChildScrollView(
                child: IconButton(
                  icon: Icon(
                    Icons.circle,
                    color: myColor.withOpacity(0.65),
                    size: 30,
                  ),
                  onPressed: () {
                    print("Center is $primaryColor ");
                    setState(() {
                      primaryColor = myColor;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      );

  // Widget buildAmountTag() => Positioned(
  //   bottom: 125,
  //   left: 50,
  //   child: Container(
  //     child: Text(
  //       "\$25.00",
  //       style: TextStyle(
  //           color: primaryColor.withOpacity(0.65),
  //           fontSize: 30.00,
  //           fontWeight: FontWeight.w500),
  //     ),
  //   ),
  // );
}
