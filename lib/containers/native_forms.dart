import 'package:flutter/material.dart';
import 'package:flutter_app/models/user.dart';
import 'package:flutter_app/styles/forms.style.dart';

class NativeFormsScreen extends StatefulWidget {
  NativeFormsScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<NativeFormsScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _user = User();

  void onSavedFormField(fields) {
    // setState(() => _user.data[fieldName] = val);
    print(fields);
  }

  static const Map<String, String> FIELDS_NAME = {
    "NAME": "name"
  };

  final Map<String, dynamic> formData = {
    "firstName": "",
    "lastName": "",
  };

  void onChangeFormField(fieldName, fieldValue) {
    setState(() {
      fieldName = fieldValue;
    });
  }

  void submit() {
    final form = _formKey.currentState;
    if(form.validate()) {
      form.save();
      _user.save();
    } else {
      print('NOT VALID');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(_counterBloc),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Form(
            key: _formKey,
            child: Column(children: <Widget>[
              TextFormField(
                onChanged: (value) => onChangeFormField(_user.firstName, value),
                decoration: styleLabelText('Name'),
                style: styleFieldText(),
                keyboardType: TextInputType.text,
                validator: (value) {
                  return value.length < 2 ? 'Name not long enough' : null;
                },
              ),
              TextFormField(
                onChanged: (value) => onChangeFormField(_user.lastName, value),
                decoration: styleLabelText('Last Name'),
                style: styleFieldText(),
                keyboardType: TextInputType.text,
                validator: (value) {
                  return value.length < 2 ? 'Name not long enough' : null;
                },
              ),
              FlatButton(
                color: Colors.blue,
                child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.black)
                ),
                onPressed: submit,
              )
            ]),
        )
      )
    );
  }
}
