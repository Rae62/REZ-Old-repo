import 'package:flutter/material.dart';
import 'package:rez/outSourcing/bottomBar.dart';
import 'package:rez/outSourcing/header.dart';

import '../../models/declarationValues.dart';

import 'oneWidgetEntree.dart';
import 'package:rez/data/data.dart' as data;

class CallWidgetEntree extends StatefulWidget {
  final List<ToDo> tovisit = data.tovisit;

  @override
  State<CallWidgetEntree> createState() => _CallWidgetEntreeState();
}

class _CallWidgetEntreeState extends State<CallWidgetEntree>
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
                    return OneWidgetEntree(
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
