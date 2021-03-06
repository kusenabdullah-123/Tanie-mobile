import 'package:flutter/material.dart';
import 'home.dart';
import 'package:localstorage/localstorage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Forms createState() => Forms();
}

class Forms extends State<Login> {
  var username = "";
  var password = "";
  final _formKey = GlobalKey<FormState>();
  final LocalStorage storage = LocalStorage('users');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.22,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/intro.png'))),
                      ),
                    ),
                    const Text("Silahkan masuk untuk melanjutkan aktivitas")
                  ],
                )
              ],
            ),
            Column(
              children: [
                Form(
                  key: _formKey,
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.text,
                          onSaved: (value) {
                            storage.setItem("username", value);
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Username Tidak Boleh Kosong';
                            }
                            username = value;
                            return null;
                          },
                          decoration: const InputDecoration(
                              hintText: "Masukan Username Anda",
                              labelText: "Username",
                              icon: Icon(Icons.badge)),
                        ),
                        TextFormField(
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password Tidak Boleh Kosong';
                            }
                            password = value;
                            return null;
                          },
                          decoration: const InputDecoration(
                              hintText: "Masukan Password Anda",
                              labelText: "Password",
                              icon: Icon(Icons.key)),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                if (username == storage.getItem("username")) {
                                  if (password == storage.getItem("password")) {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) {
                                      return const Home();
                                    }));
                                  } else {
                                    showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: const Text('Failed Login '),
                                        content: const Text('Password Salah'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, 'OK'),
                                            child: const Text('OK'),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                } else {
                                  showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      title: const Text('Failed Login '),
                                      content: const Text('User Not Found'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'OK'),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                              }
                            },
                            child: const Text("Submit"))
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        )));
  }
}
