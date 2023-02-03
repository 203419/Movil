import 'package:flutter/material.dart';
import '../components/log_button.dart';
import 'login.dart';

class Register extends StatelessWidget {
  const Register({super.key});
  get gender => null;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xFFFBF7F4),
          body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 6,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(children: [
                  const SizedBox(height: 20),
                  Image.asset(
                    'assets/img/logo.png',
                    width: 150,
                    height: 150,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Text(
                      'Registrate!',
                      style: TextStyle(
                        color: Color(0xffFC6E51),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Correo',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Usuario',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Contraseña',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Confirmar contraseña',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(labelText: 'Edad'),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: DropdownButtonFormField(
                            validator: (value) =>
                                value == "Sexo" ? "campo requerido" : null,
                            value: gender,
                            items: ["Femenino", "Masculino", "Otro"]
                                .map((e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e),
                                    ))
                                .toList(),
                            onChanged: (Object? value) {},
                          ),
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        '¿Tienes una cuenta? Inicia sesión',
                        style: TextStyle(
                          color: Color(0xff01295F),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: LogButton(
                      text: 'Registrate',
                      onTapCallback: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()),
                        );
                      },
                    ),
                  )
                ]),
              )
            ]),
          )),
    );
  }
}
