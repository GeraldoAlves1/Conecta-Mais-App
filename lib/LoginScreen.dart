import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  TextField camposDeLogin(Icon icone, String textoDaCaixa) {
    return TextField(
      decoration: InputDecoration(
        hintText: textoDaCaixa,
        hintStyle: const TextStyle(
          color: Colors.black,
        ),
        prefixIcon: icone,
        prefixIconColor: Colors.black,
        filled: true,
        fillColor: const Color.fromRGBO(215, 215, 215, 10),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 30, 94, 50),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Image(
                  image: AssetImage("assets/img2.png"),
                ),
              ),
              Column(
                children: [
                  //-------------------------TEXTFIELD-------------------------
                  camposDeLogin(const Icon(Icons.person), "Login"),
                  const SizedBox(
                    height: 15,
                  ),
                  camposDeLogin(const Icon(Icons.lock), "Senha"),
                  const SizedBox(
                    height: 15,
                  ),
                  //-------------------------BUTTON-------------------------
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(139, 0, 0, 1),
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      "ENTRAR",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              ),
              //-------------------------TEXTBUTTON-------------------------
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Esqueceu a senha?"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
