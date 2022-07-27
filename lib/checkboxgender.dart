import 'package:flutter/material.dart';

class CheckBoxFormField extends StatefulWidget {
  const CheckBoxFormField({Key? key}) : super(key: key);

  @override
  State<CheckBoxFormField> createState() => _CheckBoxFormFieldState();
}

class _CheckBoxFormFieldState extends State<CheckBoxFormField> {
  bool checkboxvalue = false;

  @override
  Widget build(BuildContext context) {
    return FormField(
      builder: (state) {
        return Checkbox(
            value: checkboxvalue,
            onChanged: (value) {
              checkboxvalue = value!;
              state.didChange(value);
            });
      },
    );
  }
}
