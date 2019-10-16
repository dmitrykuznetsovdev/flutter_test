import 'package:flutter/material.dart';
import 'package:flutter_app/models/user.dart';

class FormsScreen extends StatefulWidget {
  FormsScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<FormsScreen> {
  final _formKey = GlobalKey<FormState>();
  final _user = User();

  void onSavedFormField(String val, String fieldName) {
    setState(() => _user.data[fieldName] = val);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Form validation demo'),
        ),
        body: Container(
          color: Colors.green[500],
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Builder(
              builder: (context) => Form(
                    key: _formKey,
                    child: _containerForm(context),
                  )),
        ));
  }

  Container _containerForm(BuildContext context) => Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'First name'),
                        onSaved: (val) => onSavedFormField(val, 'firstName'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'Last name'),
                        onSaved: (val) => onSavedFormField(val, 'lastName'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'Phone'),
                        onSaved: (val) => onSavedFormField(val, 'phone'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'Email'),
                        onSaved: (val) => onSavedFormField(val, 'email'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: RaisedButton(
                  onPressed: () {
                    final form = _formKey.currentState;
                    // Validate returns true if the form is valid, otherwise false.
                    if (form.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.

                      form.save();
                      _user.save();

                      /*Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));*/
                    }
                  },
                  child: Text('Submit'),
                )
            )
          ],
        ),
      );
}
