import 'package:flutter/material.dart';
import 'package:flutter_app/models/user.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/dal/main_store.dart';
import 'package:flutter_app/componets/app_bar/app_bar.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormsScreen extends StatefulWidget {
  FormsScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<FormsScreen> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  final _user = User();

  void onSavedFormField(fields) {
    // setState(() => _user.data[fieldName] = val);
    print(fields);
  }

  static const Map<String, String> FIELDS_NAME = {
    "DATE": "date",
    "SLIDER": "slider",
    "ACCEPT_TERMS": "accept_terms",
    "GENDER": "gender",
    "AGE": "age",
    "MOVIE_RATING": "movie_rating",
    "ACCEPT_TERMS_SWITCH": "accept_terms_switch",
    "STEPPER": "stepper",
    "RATE": "rate",
    "LANGUAGES": "languages",
    "SIGNATURE": "signature",
  };

  void submit() {
    if (_formKey.currentState.saveAndValidate()) {
      print('VALID');
      print(_formKey.currentState.value);
    } else {
      print('NOT VALID');
    }
  }

  @override
  Widget build(BuildContext context) {
    final storeMain = Provider.of<MainStore>(context);
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBarComponent(
        title: 'Form validation demo',
        router: storeMain.router,
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: FormBuilder(
              key: _formKey,
              initialValue: {
                '$FIELDS_NAME["DATE"]': DateTime.now(),
                '$FIELDS_NAME["ACCEPT_TERMS"]': false,
              },
              autovalidate: true,
              child: ListView(children: <Widget>[
                FormBuilderDateTimePicker(
                  attribute: FIELDS_NAME['DATE'],
                  style: TextStyle(color: Colors.black),
                  inputType: InputType.date,
                  format: DateFormat("yyyy-MM-dd"),
                  decoration: InputDecoration(labelText: "Appointment Time"),
                ),
                FormBuilderSlider(
                  attribute: FIELDS_NAME['SLIDER'],
                  validators: [FormBuilderValidators.min(6)],
                  min: 0.0,
                  max: 10.0,
                  initialValue: 1.0,
                  divisions: 20,
                  decoration: InputDecoration(labelText: "Number of things"),
                ),
                FormBuilderCheckbox(
                  attribute: FIELDS_NAME['ACCEPT_TERMS'],
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
                  attribute: FIELDS_NAME['GENDER'],
                  decoration: InputDecoration(labelText: "Gender"),
                  // initialValue: 'Male',
                  hint: Text('Select Gender'),
                  validators: [FormBuilderValidators.required()],
                  items: ['Male', 'Female', 'Other']
                      .map((gender) => DropdownMenuItem(
                          value: gender, child: Text("$gender")))
                      .toList(),
                ),
                FormBuilderTextField(
                  style: TextStyle(color: Colors.black),
                  attribute: FIELDS_NAME['AGE'],
                  decoration: InputDecoration(labelText: "Age"),
                  validators: [
                    FormBuilderValidators.numeric(),
                    FormBuilderValidators.max(70),
                  ],
                ),
                FormBuilderSegmentedControl(
                  decoration:
                      InputDecoration(labelText: "Movie Rating (Archer)"),
                  attribute: FIELDS_NAME['MOVIE_RATING'],
                  options: List.generate(5, (i) => i + 1)
                      .map((number) => FormBuilderFieldOption(value: number))
                      .toList(),
                ),
                FormBuilderSwitch(
                  label: Text(
                    'I Accept the tems and conditions',
                    style: TextStyle(color: Colors.black),
                  ),
                  attribute: FIELDS_NAME['ACCEPT_TERMS_SWITCH'],
                  initialValue: true,
                ),
                FormBuilderStepper(
                  decoration: InputDecoration(labelText: "Stepper"),
                  attribute: FIELDS_NAME['STEPPER'],
                  initialValue: 10,
                  step: 1,
                ),
                FormBuilderRate(
                  decoration: InputDecoration(labelText: "Rate this form"),
                  attribute: FIELDS_NAME['RATE'],
                  iconSize: 32.0,
                  initialValue: 1,
                  max: 5,
                ),
                FormBuilderCheckboxList(
                  decoration: InputDecoration(
                      labelText: "The language of my people",
                      labelStyle: TextStyle(color: Colors.black, fontSize: 20)),
                  // activeColor: Colors.black,
                  attribute: FIELDS_NAME['LANGUAGES'],
                  initialValue: ["Dart"],
                  options: [
                    FormBuilderFieldOption(
                        value: 'Dart',
                        child: Text("Dart",
                            style: TextStyle(color: Colors.black))),
                    FormBuilderFieldOption(
                        value: 'Kotlin',
                        child: Text("Kotlin",
                            style: TextStyle(color: Colors.black))),
                    FormBuilderFieldOption(
                        value: 'Java',
                        child: Text("Java",
                            style: TextStyle(color: Colors.black))),
                    FormBuilderFieldOption(
                        value: 'Swift',
                        child: Text("Swift",
                            style: TextStyle(color: Colors.black))),
                    FormBuilderFieldOption(
                        value: 'Objective-C',
                        child: Text("Objective-C",
                            style: TextStyle(color: Colors.black))),
                  ],
                ),
                FormBuilderSignaturePad(
                  decoration: InputDecoration(labelText: "Signature"),
                  attribute: FIELDS_NAME['SIGNATURE'],
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
