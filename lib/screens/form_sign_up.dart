import 'package:ceremony/styling/styling_methods.dart';
import 'package:flutter/material.dart';

class sign extends StatefulWidget {
  @override
  _signState createState() => _signState();
}

class _signState extends State<sign> {
  String _name;
  String _email;
  String _phone;
  String _password;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Enter Name',
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar('Form Sign UP'),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildName(),
                // _buildEmail(),
                // _buildPhone(),
                // _buildPassword(),

                SizedBox(height: 60),
                RaisedButton(
                  color: Colors.sub_button,
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.button_text,
                    ),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }

                    _formKey.currentState.save();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
