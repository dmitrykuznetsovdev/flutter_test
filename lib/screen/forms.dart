import 'package:flutter/material.dart';
import 'package:flutter_app/models/user.dart';
import 'package:intl/intl.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormsScreen extends StatefulWidget {
  FormsScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<FormsScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _user = User();

  void onSavedFormField(String val, String fieldName) {
    setState(() => _user.data[fieldName] = val);
  }

  void submit() {
    final form = _formKey.currentState;
    // Validate returns true if the form is valid, otherwise false.
    if (form.validate()) {
      // If the form is valid, display a snackbar. In the real world,
      // you'd often call a server or save the information in a database.

      form.save();
      _user.save();

      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text('Processing Data')));
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Form validation demo'),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: FormBuilder(
              key: _formKey,
              initialValue: {
                'date': DateTime.now(),
                'accept_terms': false,
              },
              onChanged: (fields) {
                // print(fields);
              },
              autovalidate: true,
              child: ListView(children: <Widget>[
                FormBuilderDateTimePicker(
                  attribute: "date",
                  style: TextStyle(color: Colors.black),
                  inputType: InputType.date,
                  format: DateFormat("yyyy-MM-dd"),
                  decoration:
                  InputDecoration(labelText: "Appointment Time"),
                ),
                FormBuilderSlider(
                  attribute: "slider",
                  validators: [FormBuilderValidators.min(6)],
                  min: 0.0,
                  max: 10.0,
                  initialValue: 1.0,
                  divisions: 20,
                  decoration:
                  InputDecoration(labelText: "Number of things"),
                ),
                FormBuilderCheckbox(
                  attribute: 'accept_terms',
                  label: Text(
                      "I have read and agree to the terms and conditions",
                      style: TextStyle(color: Colors.black),
                  ),
                  validators: [
                    FormBuilderValidators.requiredTrue(
                      errorText:
                      "You must accept terms and conditions to continue",
                    ),
                  ],
                ),
                FormBuilderDropdown(
                  style: TextStyle(color: Colors.black),
                  attribute: "gender",
                  decoration: InputDecoration(labelText: "Gender"),
                  // initialValue: 'Male',
                  hint: Text('Select Gender'),
                  validators: [FormBuilderValidators.required()],
                  items: ['Male', 'Female', 'Other']
                      .map((gender) => DropdownMenuItem(
                      value: gender,
                      child: Text("$gender")
                  )).toList(),
                ),
                FormBuilderTextField(
                  style: TextStyle(color: Colors.black),
                  attribute: "age",
                  decoration: InputDecoration(labelText: "Age"),
                  validators: [
                    FormBuilderValidators.numeric(),
                    FormBuilderValidators.max(70),
                  ],
                ),
                FormBuilderSegmentedControl(
                  decoration: InputDecoration(labelText: "Movie Rating (Archer)"),
                  attribute: "movie_rating",
                  options: List.generate(5, (i) => i + 1)
                      .map(
                          (number) => FormBuilderFieldOption(value: number))
                      .toList(),
                ),
                FormBuilderSwitch(
                  label: Text(
                      'I Accept the tems and conditions',
                      style: TextStyle(color: Colors.black),
                  ),
                  attribute: "accept_terms_switch",
                  initialValue: true,
                ),
                FormBuilderStepper(
                  decoration: InputDecoration(labelText: "Stepper"),
                  attribute: "stepper",
                  initialValue: 10,
                  step: 1,
                ),
                FormBuilderRate(
                  decoration: InputDecoration(labelText: "Rate this form"),
                  attribute: "rate",
                  iconSize: 32.0,
                  initialValue: 1,
                  max: 5,
                ),
                FormBuilderCheckboxList(
                  decoration: InputDecoration(
                      labelText: "The language of my people",
                      focusColor: Colors.black
                  ),
                  // activeColor: Colors.black,
                  attribute: "languages",
                  initialValue: ["Dart"],
                  options: [
                    FormBuilderFieldOption(value: "Dart"),
                    FormBuilderFieldOption(value: "Kotlin"),
                    FormBuilderFieldOption(value: "Java"),
                    FormBuilderFieldOption(value: "Swift"),
                    FormBuilderFieldOption(value: "Objective-C"),
                  ],
                ),
                FormBuilderSignaturePad(
                  decoration: InputDecoration(labelText: "Signature"),
                  attribute: "signature",
                  height: 100,
                ),
                Container(
                    width: screenSize.width,
                    margin: EdgeInsets.only(top: 20.0),
                    child: new RaisedButton(
                        color: Colors.blue,
                        child: new Text(
                          'Login',
                          style: new TextStyle(color: Colors.white),
                        ),
                        onPressed: this.submit))
              ]))),
    );
  }
}
