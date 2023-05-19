import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({super.key});

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stepper(
            steps: [
              Step(
                isActive: _currentStep == 0,
                title: Text("Step 1"),
                content: Text(
                  "Information for step 1",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              Step(
                isActive: _currentStep == 1,
                title: Text("Step 2"),
                content: Text(
                  "Information for step 2",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              Step(
                isActive: _currentStep == 2,
                title: Text("Step 3"),
                content: Text(
                  "Information for step 3",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              Step(
                isActive: _currentStep == 3,
                title: Text("Step 4"),
                content: Text(
                  "Information for step 4",
                  style: TextStyle(color: Colors.red),
                ),
              )
            ],
            onStepTapped: (value) {
              setState(() {
                _currentStep = value;
              });
            },
            onStepContinue: () {
              if (_currentStep < 3) {
                setState(() {
                  _currentStep++;
                });
              }
            },
            onStepCancel: () {
              if (_currentStep > 0) {
                setState(() {
                  _currentStep--;
                });
              }
            },
            currentStep: _currentStep,
            type: StepperType.vertical,
            controlsBuilder: (context, details) {
              return Row(
                children: [
                  TextButton(
                    onPressed: details.onStepCancel,
                    child: const Text("Cancel"),
                  ),
                  TextButton(
                    onPressed: details.onStepContinue,
                    child: const Text("Continue"),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
