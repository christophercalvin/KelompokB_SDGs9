import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class routingGantiPage{
  static GantiPage(BuildContext context, StatelessWidget pages){
    Navigator.push(context,
        MaterialPageRoute(
            builder: (_){
              return pages;
            }
        )
    );
  }

  static Transition (BuildContext context, StatelessWidget pages){
    Navigator.push(context, PageTransition(
        duration: Duration(seconds: 3),
        type: PageTransitionType.leftToRight,
        child: pages));
  }
}