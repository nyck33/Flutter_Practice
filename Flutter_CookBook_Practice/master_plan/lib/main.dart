import 'package:flutter/material.dart';
import './views/plan_screen.dart';
import './plan_provider.dart';
import './views/plan_creator_screen.dart';

void main() => runApp(MasterPlanApp());

class MasterPlanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlanProvider(
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.purple),
        //UI class is a child of the provider of data
        //top of tree is the inherited widget
        //home: PlanProvider(child: PlanScreen()),
        home: PlanCreatorScreen(),
      ),
    );
  }
}
