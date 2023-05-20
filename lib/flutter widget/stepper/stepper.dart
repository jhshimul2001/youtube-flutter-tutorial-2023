import 'package:flutter/material.dart';

class Steppers extends StatefulWidget {
  const Steppers({Key? key}) : super(key: key);

  @override
  State<Steppers> createState() => _SteppersState();
}

class _SteppersState extends State<Steppers> {
  int _currentindex = 0;

  List<Step> steplist() => [
        Step(
          isActive: _currentindex >= 0,
            title: Text("Beginner"),
            content: Center(
              child: Text("Beginner level programmer"),
            )),
        Step(
            isActive: _currentindex >= 1,
            title: Text("mid"),
            content: Center(
              child: Text("mid level programmer"),
            )),
        Step(
            isActive: _currentindex >= 2,
            title: Text("high"),
            content: Center(
              child: Text("high level programmer"),
            )),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
        type: StepperType.vertical,
        steps: steplist(),
        currentStep: _currentindex,
        onStepTapped: (index) {
          setState(() {
            _currentindex = index;
          });
        },
        onStepContinue: (){
          if(_currentindex < steplist().length-1){
            setState(() {
               _currentindex += 1;
            });
          }
        },
        onStepCancel: (){
          if(_currentindex == 0){
           return;
          }
          else{
            setState(() {
              _currentindex -= 1;
            });
          }
        },
      ),
    );
  }
}
