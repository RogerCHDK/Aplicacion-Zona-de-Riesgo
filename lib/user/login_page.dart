import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

enum FormType { login, register }

class _LoginPageState extends State<LoginPage> {
  Firestore firestore = Firestore.instance;

  final formKey = new GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  String _email;
  String _password;
  String _tipo;
  FormType _formType = FormType.login;

  CollectionReference users = Firestore.instance.collection('usuarios');

  Future<void> addUser(String id) {
    //  // Call the user's CollectionReference to add a new user
    return users
        .document(id)
        .setData({'correo': _email, 'contrasenia': _password, 'tipo': _tipo})
        .then((value) => print("Usuario actualizado"))
        .catchError((error) => print("Error al insertar usuario: $error"));
  }

  bool validateAndSave() {
    final form = formKey.currentState;

    if (form.validate()) {
      form.save();
      print('Logeado. Email: $_email, Password: $_password');

      return true;
    }
    return false;
  }

  void validateAndSubmit() async {
    if (validateAndSave()) {
      try {
        if (_formType == FormType.login) {
          try {
            final user = await _auth.signInWithEmailAndPassword(
                email: _email, password: _password);
            print("Logeado: ${user.user.uid}");
            tipoUsuario(user.user.uid);
            formKey.currentState.reset();
          } catch (e) {
            return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Correo/Contraseña no valido"),
                );
              },
            );
          }
        } else {
          try {
            if (_tipo == "Administrador" || _tipo == "Consultor") {
              final user = await _auth.createUserWithEmailAndPassword(
                  email: _email, password: _password);
              addUser(user.user.uid);
              print('Usuario regitrado: ${user.user.uid} ');
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Registro exitoso"),
                  );
                },
              );
              formKey.currentState.reset();
            } else
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Seleccione Admin/Consultor"),
                  );
                },
              );
          } catch (e) {
            return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Datos no validos"),
                );
              },
            );
          }
        }
      } catch (e) {
        print("error" + e);
      }
    }
  }

  String _isAdmin;
  void tipoUsuario(String id) {
    Firestore.instance
        .collection('usuarios')
        .document(id)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        print('Document data: ${documentSnapshot.data}');
        _isAdmin = documentSnapshot['tipo'];
        if (_isAdmin.compareTo("Administrador") == 0) {
          print("Es admin");
          Navigator.of(context).pushNamed('/principal');
        } else {
          print("Es consultor");
          Navigator.of(context).pushNamed('/principal');
        }
      }
    });
  }

  void moveToRegister() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.register;
    });
  }

  void moveToLogin() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.login;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
      ),
      body: SingleChildScrollView(
        child: new Container(
          padding: EdgeInsets.all(20.0),
          child: new Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: buildInputs() + buildSubmitButtons(),
              )),
        ),
      ),
    );
  }

  List<Widget> buildInputs() {
    return [
      TextFormField(
        decoration: InputDecoration(labelText: "Email"),
        validator: (value) => value.isEmpty ? 'Campo vacío' : null,
        onSaved: (value) => _email = value,
      ),
      TextFormField(
        decoration: InputDecoration(labelText: "Constraseña"),
        obscureText: true,
        validator: (value) => value.isEmpty ? 'Campo vacío' : null,
        onSaved: (value) => _password = value,
      ),
    ];
  }

  List<Widget> buildSubmitButtons() {
    if (_formType == FormType.login) {
      return [
        RaisedButton(
          child: Text("Login", style: TextStyle(fontSize: 18.0)),
          onPressed: validateAndSubmit,
        ),
        FlatButton(
            onPressed: moveToRegister,
            child: Text(
              "¿No tienes cuenta? Registrate",
              style: TextStyle(
                  fontSize: 15.0, decoration: TextDecoration.underline),
            ))
      ];
    } else {
      return [
        RadioButtonGroup(
            labels: [
              "Administrador",
              "Consultor",
            ],
            onChange: (String label, int index) =>
                print("label: $label index: $index"),
            onSelected: (String label) {
              _tipo = label;
            }),
        RaisedButton(
          child: Text("Crear cuenta", style: TextStyle(fontSize: 18.0)),
          onPressed: validateAndSubmit,
        ),
        FlatButton(
            onPressed: moveToLogin,
            child: Text(
              "¿Tienes cuenta? Logeate",
              style: TextStyle(
                  fontSize: 15.0, decoration: TextDecoration.underline),
            ))
      ];
    }
  }
}
