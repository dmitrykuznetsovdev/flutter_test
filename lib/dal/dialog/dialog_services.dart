import 'dart:async';
import 'package:flutter/widgets.dart';

class DialogRequest {
  final String title;
  final String description;
  final String buttonTitle;
  DialogRequest({
    @required this.title,
    @required this.description,
    @required this.buttonTitle,
  });
}

class DialogResponse {
  final String fieldOne;
  final String fieldTwo;
  final bool confirmed;
  DialogResponse({
    this.fieldOne,
    this.fieldTwo,
    this.confirmed,
  });
}

class DialogService {
  Function(DialogRequest) _showDialogListener;
  Completer<DialogResponse> _dialogCompleter;

  /// Registers a callback function. Typically to show the dialog
  void registerDialogListener(Function showDialogListener) {
    _showDialogListener = showDialogListener;
  }

  Future showDialog({
    String title,
    String description,
    String buttonTitle = 'Ok',
  }) {
    _dialogCompleter = Completer<DialogResponse>();
    _showDialogListener(DialogRequest(
      title: title,
      description: description,
      buttonTitle: buttonTitle,
    ));
    return _dialogCompleter.future;
  }


  /// Completes the _dialogCompleter to resume the Future'sexecution call
  void dialogComplete(DialogResponse response) {
    _dialogCompleter.complete(response);
    _dialogCompleter = null;
  }
}