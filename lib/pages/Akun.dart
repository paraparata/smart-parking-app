import 'package:flutter/material.dart';

class Akun extends StatefulWidget {
  @override
  AkunState createState() {
    return AkunState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class AkunState extends State<Akun> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<AkunState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return ListView(
      children: <Widget>[
        Card(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Udin Galon',
                        labelText: 'Nama Lengkap *'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Wajib diisi';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(Icons.credit_card),
                        hintText: 'D 3431 TU',
                        labelText: 'Nomor Plat Kendaraan *'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Wajib diisi';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.phone_android),
                        hintText: '0851 6661 1666',
                        labelText: 'No. Telp *'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Wajib diisi';
                      }
                      return null;
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: RaisedButton(
                          onPressed: () {
                            // Validate returns true if the form is valid, or false
                            // otherwise.
                            if (_formKey.currentState.validate()) {
                              // If the form is valid, display a Snackbar.
                              Scaffold.of(context).showSnackBar(
                                  SnackBar(content: Text('Memproses')));
                            }
                          },
                          child: Text('Submit'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                onPressed: () {
                  // logout function
                },
                child: Text('Logout'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
