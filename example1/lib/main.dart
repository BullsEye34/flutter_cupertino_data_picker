import 'package:flutter/material.dart';
import 'test.dart';

void main() {
  runApp(
    MaterialApp(
      home: App(),
    ),
  );
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: FlatButton(
          child: Text("PRESS"),
          onPressed: () {
            _showDataPicker();
          },
        ),
      ),
    );
  }

  void _showDataPicker() {
    final bool showTitleActions = true;
    DataPicker.showDatePicker(
      context,
      showTitleActions: showTitleActions,
      locale: 'en',
      isDark: true,
      datas: ['dog', 'cat'],
      title: 'select',
      onChanged: (data) {
        print('onChanged date: $data');
      },
      onConfirm: (data) {
        print('onConfirm date: $data');
      },
    );
  }
}
