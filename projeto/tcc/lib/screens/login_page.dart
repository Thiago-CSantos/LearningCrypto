import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tcc/data/dummy_data.dart';
import 'package:tcc/routes/app_routes.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  LoginPage({super.key});

  final Uri url = Uri.parse("https://66783b0f0bd45250561df36d.mockapi.io/mock/api/1/usuario");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: const BackButton(),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
          color: Colors.white,
          child: ListView(
            children: [
              const Text(
                "Welcome!",
                style: TextStyle(
                  fontFamily: "Epilogue",
                  fontSize: 48,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                "Sing in to continue",
                style: TextStyle(
                  color: Color(0x520A0B20),
                  fontFamily: "Epilogue",
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _emailController,
                validator: (String? valor) {
                  if (valor!.isEmpty) {
                    return "Por favor preencha o campo";
                  }
                  if (valor.length < 4) {
                    return "O e-mail muito curto";
                  }
                  if (!valor.contains("@")) {
                    return "E-mail invalido";
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    labelText: "E-mail",
                    labelStyle: TextStyle(
                        color: Color.fromARGB(106, 24, 74, 255),
                        fontWeight: FontWeight.w300,
                        fontSize: 20)),
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordController,
                validator: (String? valorSenha) {
                  if (valorSenha!.isEmpty) {
                    return "Por favor preencha o campo";
                  }
                  if (valorSenha.length < 4) {
                    return "O senha muito curta";
                  }
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      color: Color.fromARGB(106, 24, 74, 255),
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    )),
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 90,
              ),
              Container(
                height: 60,
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.3, 1],
                      colors: [Color(0xFF7165E3), Color(0xFF184BFF)],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(7))),
                child: SizedBox.expand(
                  child: TextButton(
                    onPressed: () {
                      return botaoLogin(context);
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "LOGIN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: "RobotoCondensed",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                alignment: Alignment.center,
                child: TextButton(
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Color(0xFF184BFF),
                        fontFamily: "Epilogue",
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () => {
                    // Navigator.push(context, route)
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  "or",
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () => {},
                      child: Image.asset(
                        "assets\\images\\google.png",
                      ),
                    ),
                    TextButton(
                      onPressed: () => {},
                      child: Image.asset(
                        "assets\\images\\apple.png",
                      ),
                    ),
                    TextButton(
                      onPressed: () => {},
                      child: Image.asset(
                        "assets\\images\\facebook.png",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                            color: Color(0x520A0B20),
                            fontFamily: "Epilogue",
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                        onPressed: () => {},
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all<EdgeInsets>(
                              EdgeInsets.zero),
                          minimumSize:
                              WidgetStateProperty.all<Size>(const Size(0, 0)),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Text(
                          " Sign in",
                          style: TextStyle(
                              color: Color(0xFF184BFF),
                              fontFamily: "Epilogue",
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  void botaoLogin(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      print("Form validao");
      var resposta = await _consome_api(_emailController.text, _passwordController.text);
      print("api: ${resposta[3]["name"]}");
      Navigator.pushNamed(context, AppRoutes.CATEGOREIS_MEALS, arguments: DUMMY_ILLUSTRATIONS);
    }
    print("Form invalido!!");

    print("TESTE: $_emailController");
    print(_emailController.text);

  }

// api de teste
  Future<List<dynamic>> _consome_api(String email, String password) async {
    http.Response resposta = await http.get(url);
    return json.decode(resposta.body);
  }

}
