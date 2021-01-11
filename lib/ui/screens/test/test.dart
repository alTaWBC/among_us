import 'package:among_us/configs/images.dart';
import 'package:among_us/routes.dart';
import 'package:among_us/ui/screens/play/widgets/crewmate_card.dart';
import 'package:flutter/material.dart';
import 'package:holding_gesture/holding_gesture.dart';

class Test extends StatefulWidget {
  const Test({Key key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    final Size totalSize = MediaQuery.of(context).size;
    final Size childrenSize = Size(totalSize.width * 0.45, totalSize.height * 0.2);
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image(
              image: AppImages.use,
              height: totalSize.height * .05,
              width: totalSize.height * .05,
            ),
            label: 'map',
          ),
          BottomNavigationBarItem(
            icon: HoldDetector(
              onHold: () {},
              // onTap: () => AppNavigator.push<void>(Routes.mapInfo),
              // onCancel: () => Navigator.pop(context),
              child: Image(
                image: AppImages.use,
                height: totalSize.height * .05,
                width: totalSize.height * .05,
              ),
            ),
            label: 'aaaa',
          )
        ],
      ),
      body: SafeArea(
        child: GridView.count(
          childAspectRatio: 1.2,
          crossAxisCount: 2,
          children: <Widget>[
            CrewmateCard(childrenSize),
            CrewmateCard(childrenSize),
            CrewmateCard(childrenSize),
            CrewmateCard(childrenSize),
            CrewmateCard(childrenSize),
            CrewmateCard(childrenSize),
            CrewmateCard(childrenSize),
            CrewmateCard(childrenSize),
            CrewmateCard(childrenSize),
          ],
        ),
      ),
    );
  }
}
