import 'package:flutter/material.dart';
import 'login.dart';
import 'package:localstorage/localstorage.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Forms createState() => Forms();
}

class Forms extends State<Register> {
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
                          keyboardType: TextInputType.number,
                          onSaved: (value) {
                            storage.setItem("no", value);
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'No Tidak Boleh Kosong';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              hintText: "Masukan No Telp Anda",
                              labelText: "No Telp",
                              icon: Icon(Icons.phone)),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          onSaved: (value) {
                            storage.setItem("nama", value);
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Nama Tidak Boleh Kosong';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              hintText: "Masukan Nama Anda",
                              labelText: "Nama",
                              icon: Icon(Icons.person)),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          onSaved: (value) {
                            storage.setItem("username", value);
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Username Tidak Boleh Kosong';
                            }
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
                          onSaved: (value) {
                            storage.setItem("password", value);
                          },
                          decoration: const InputDecoration(
                              hintText: "Masukan Password Anda",
                              labelText: "Password",
                              icon: Icon(Icons.key)),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState?.save();
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return const Login();
                                }));
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
