
import 'package:flutter/material.dart';

class PlanProvider extends ChangeNotifier {
  bool basePlan = true;

  bool get fetchCurrentPlan {
    return basePlan;
  }

  void updatePlan(bool newValue){
    basePlan = newValue;
    notifyListeners();
  }
}