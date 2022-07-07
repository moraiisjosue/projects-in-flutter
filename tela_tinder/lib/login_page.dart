import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'assets/imagens/fundo.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(
                  'assets/imagens/logo.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                child: Text('Location Changer',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                child: Text('Plugin app for Tinder',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    )),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    primary: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Login with Facebook',
                    style: TextStyle(
                      color: Color.fromARGB(255, 194, 39, 78),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
