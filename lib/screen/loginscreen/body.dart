import 'package:aplication_stockbay/screen/homescreen/home.dart';
import 'package:aplication_stockbay/screen/loginscreen/backgroud.dart';
import 'package:aplication_stockbay/views/widget.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Backgroud(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Bem-vindo ao Stockbay',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const TextFildContaner(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'stockbay@email.com',
                  icon: Icon(Icons.email, color: Colors.white),
                ),
              ),
            ),
            const TextFildContaner(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  icon: Icon(Icons.lock, color: Colors.white),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Checkbox(value: false, onChanged: null),
                  Text('Manter conectado.'),
                  Text('Esqueceu a Senha')
                ],
              ),
            ),
            ElevatedButtonContaner(
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
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
                children: const [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('OU'),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (null),
                  child: Row(
                    children: const [
                      SquareTile(imagePatch: 'images/img/google.png'),
                      Text('Entre com sua conta Goole')
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
