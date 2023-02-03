import 'package:flutter/material.dart';
import '../components/log_button.dart';
import 'home.dart';
import 'register.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFBF7F4),
        // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          // child: Column(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              Image.asset(
                'assets/img/logo.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 30),

              // Container de usuario y contraseña
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
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'Bienvenido',
                        style: TextStyle(
                          color: Color(0xff01295F),
                          fontSize: 20,
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'Inicia sesión para continuar',
                        style: TextStyle(
                          color: Color(0xff01295F),
                          fontSize: 15,
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      // text y textfield de usuario
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

                    // crear cuenta
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          '¿No tienes cuenta? Crea una',
                          style: TextStyle(
                            color: Color(0xff01295F),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // boton de iniciar sesion
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 30),
                child: LogButton(
                  text: 'Iniciar sesion',
                  onTapCallback: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
