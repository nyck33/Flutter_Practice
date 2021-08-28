///top level screen of all plans with text field at top for new plans
import 'dart:html';
import '../models/data_layer.dart';
import '../plan_provider.dart';
import 'plan_screen.dart';

import 'package:flutter/material.dart';

class PlanCreatorScreen extends StatefulWidget {
  const PlanCreatorScreen({Key? key}) : super(key: key);

  @override
  _PlanCreatorScreenState createState() => _PlanCreatorScreenState();
}

class _PlanCreatorScreenState extends State<PlanCreatorScreen> {
  //for creating simple Textfields for new plans
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Master Plans')),
      body: Column(
        children: <Widget>[
          _buildListCreator(), //textfield and func to add plan on tap
          Expanded(child: _buildMasterPlans()),
        ],
      ),
    );
  }

  Widget _buildListCreator() {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Material(
          //makes field pop out
          color: Theme.of(context).cardColor,
          elevation: 10,
          child: TextField(
              controller: textController,
              decoration: InputDecoration(
                  labelText: 'Add a Plan', contentPadding: EdgeInsets.all(20)),
              onEditingComplete: addPlan),
        ));
  }

  ///check if user typed something into field and reset screen
  void addPlan() {
    final text = textController.text;

    ///remove all business logic
    //if (text.isEmpty) {
    //return; //don't add blanks
    //}
    //access the Plan Controller through Plan Provider's context static method
    final controller = PlanProvider.of(context);
    controller.addNewPlan(text);

    //final plan = Plan()..name = text;
    //inherited widget method call
    //PlanProvider.of(context).add(plan);
    textController.clear();
    //request focus away from current focusnode????
    FocusScope.of(context).requestFocus(FocusNode());
    setState(() {});
  }

  ///read data from PlanProvider and print to screen
  Widget _buildMasterPlans() {
    final plans = PlanProvider.of(context).plans;

    if (plans.isEmpty) {
      return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.note, size: 100, color: Colors.grey),
            Text('No plans yet', style: Theme.of(context).textTheme.headline5)
          ]);
    }

    return ListView.builder(
        itemCount: plans.length,
        itemBuilder: (context, index) {
          final plan = plans[index];
          return ListTile(
              title: Text(plan.name),
              subtitle: Text(plan.completenessMessage),
              onTap: () {
                //go  to plan_screen for this plan
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => PlanScreen(plan: plan)));
              });
        });
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
}
