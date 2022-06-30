import 'package:flutter/material.dart';

import '../../models/declarationValues.dart';
import '../../datas/data.dart' as data;
import 'oneWidgetPlat.dart';
import '../../composants/header.dart';
import '../../composants/bottomBar.dart';



class CallWidgetPlat extends StatefulWidget {
  final List<ToDo> tovisit = data.tovisit;

  @override
  State<CallWidgetPlat> createState() => _CallWidgetPlatState();
}

class _CallWidgetPlatState extends State<CallWidgetPlat>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController controller =
        new TabController(initialIndex: 0, length: 4, vsync: this);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 232, 232),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
           Header(),
            Container(
              child: TabBar(
                  labelColor: Color.fromARGB(255, 239, 113, 90),
                  unselectedLabelColor: Color.fromARGB(255, 111, 115, 118),
                  indicatorColor: Color.fromARGB(255, 239, 113, 90),
                  isScrollable: true,
                  controller: controller,
                  indicatorWeight: 4,
                  labelStyle: TextStyle(fontSize: 16),
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        'ENTREES',
                        style: TextStyle(
                            fontFamily: "BarlowBold",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'PLATS',
                        style: TextStyle(
                            fontFamily: "BarlowBold",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'DESSERTS',
                        style: TextStyle(
                            fontFamily: "BarlowBold",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'BOISSONS',
                        style: TextStyle(
                            fontFamily: "BarlowBold",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]),
            ),
            Container(
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return OneWidgetPlat(
                      todo: widget.tovisit[index],
                    );
                  },
                  itemCount: widget.tovisit.length),
            )
          ],
        ),
      ),
    bottomNavigationBar: BottomBar(),
    );
  }
}
