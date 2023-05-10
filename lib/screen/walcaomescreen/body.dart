import 'package:aplication_stockbay/screen/loginscreen/loginscreen.dart';
import 'package:aplication_stockbay/screen/registerscreen/registerscreen.dart';
import 'package:aplication_stockbay/screen/walcaomescreen/backgroud.dart';
import 'package:aplication_stockbay/views/widget.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final textBold =
      'Compre e venda qualquer coisa mais rapidamente com o Chunky App';

  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Backgroud(
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'images/img/walcome.png',
                width: size.width * 0.5,
              ),
              const Text(
                textAlign: TextAlign.center,
                'Gerenciar seu negócio rapidamente com o Stockbay',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const Text(
                textAlign: TextAlign.center,
                'Grandes descontos e ofertas quando você compra.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              ElevatedButtonContaner(
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  ),
                  child: const Text(
                    textAlign: TextAlign.center,
                    'Login',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButtonContaner(
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterScreen(),
                    ),
                  ),
                  child: const Text(
                    textAlign: TextAlign.center,
                    'Registre-se',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
