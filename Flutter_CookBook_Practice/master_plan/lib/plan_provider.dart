///InheritedWidget is an abstract class so msut implement updateShouldNotify    ///method which is called whenever widget rebuilt.  It looks at content of old ////widget and determines if the child widgets need to be notified that data has ///changed.  Here just return false and opt-out of this functionality.  Most //////cases don't need this to return true.
///Where in widget tree is this and what are children?
///
///
import 'dart:html';

import 'package:flutter/material.dart';
import './models/data_layer.dart';
import './controllers/plan_controller.dart';

class PlanProvider extends InheritedWidget {
  //final _plan = Plan();
  //final _plans = <Plan>[];
  final _controller = PlanController();
  //Widget as param is the Plan _plan?
  PlanProvider({Key? key, Widget? child}) : super(key: key, child: child!);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

  //return an instance of PlanController as member
  static PlanController of(BuildContext context) {
    PlanProvider? provider =
        context.dependOnInheritedWidgetOfExactType<PlanProvider>();

    return provider!._controller;
  }

  ///own implementation of of the of-context pattern
  ///Here, use context's dependOnInheritedWidgetofExactType method
  ///to kick off tree traversal.  Flutter starts from widget that owns this context and travels upwards until it finds a PlanProvider

  ///static method that returns a plan in context of inherited widget
  ///at top of tree
  //static List<Plan> of(BuildContext context) {
  //final provider = context.dependOnInheritedWidgetOfExactType<PlanProvider>///();
  //get the provider from context
  //return provider!._plans;
  //}
}
