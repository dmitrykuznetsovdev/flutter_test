import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/dal/main_store.dart';
import 'package:flutter_app/componets/app_bar/app_bar.dart';
import 'package:flutter_app/styles/forms.style.dart';

class NativeFormsScreen extends StatefulWidget {
  NativeFormsScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<NativeFormsScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final storeMain = Provider.of<MainStore>(context);
    final storeView = storeMain.viewStore;

    return Observer(
        builder: (_) => Scaffold(
            appBar: appBar('${storeView.nativeForms.getFullName}', storeMain.router),
            body: Container(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: Form(
                  key: _formKey,
                  child: Column(children: <Widget>[
                    TextFormField(
                      onChanged: (value) => storeView.nativeForms.name = value,
                      decoration: styleLabelText('Name'),
                      style: styleFieldText(),
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        return value.length < 2 ? 'Name not long enough' : null;
                      },
                    ),
                    TextFormField(
                      onChanged: (value) => storeView.nativeForms.lastName = value,
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
                          style: TextStyle(
                              color: storeView.nativeForms.isValid
                                  ? Colors.black
                                  : Colors.red
                          )
                      ),
                      onPressed: () => storeView.nativeForms.submit(_formKey),
                    ),
                    Center(
                      child: Text(
                        '${storeView.nativeForms.getFullName}',
                        style: TextStyle(fontSize: 44.0, color: Colors.green),
                      ),
                    )
                  ]),
                )
            )
        )
    );
  }
}
