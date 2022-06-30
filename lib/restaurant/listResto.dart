import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../models/declarationValues.dart';
import '../../datas/data.dart' as data;
import 'oneWidgetResto.dart';

class CallWidgetResto extends StatefulWidget {
  final List<ToDo> tovisit = data.tovisit;

  @override
  State<CallWidgetResto> createState() => _CallWidgetRestoState();
}

class _CallWidgetRestoState extends State<CallWidgetResto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 232, 232),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 247, 246, 248),
          shadowColor: Colors.grey,
          title: Text(
            "Liste des restaurants",
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return OneWidgetResto(
              todo: widget.tovisit[index],
            );
          },
          itemCount: widget.tovisit.length),
    );
  }
}
