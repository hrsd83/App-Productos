import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scanner_products/providers/login_form_providers.dart';
import 'package:scanner_products/ui/input_decorations.dart';
import 'package:scanner_products/widgets/auth_background.dart';
import 'package:scanner_products/widgets/card_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 250,
              ),
              CardContainer(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Login',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ChangeNotifierProvider(
                      create: (_) => LoginFormProvider(),
                      child: _LoginForm(),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Crear una nueva cuenta',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Class del _LoginForm
class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);
    return Container(
        child: Form(
            key: loginForm.formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecorations.authInputDecoration(
                      hinText: 'Correo@gmail.com',
                      labelText: 'Correo electronico',
                      prefixIcon: Icons.mail),
                  onChanged: (value) => loginForm.email = value,
                  validator: (value) {
                    String pattern =
                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                    RegExp regExp = RegExp(pattern);
                    return regExp.hasMatch(value ?? '')
                        ? null
                        : 'El correo ingresado no es correcto';
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  autocorrect: false,
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecorations.authInputDecoration(
                      hinText: '*****',
                      labelText: 'Contraseña',
                      prefixIcon: Icons.lock),
                  onChanged: (value) => loginForm.password = value,
                  validator: (value) {
                    return (value != null && value.length >= 6)
                        ? null
                        : 'La contraseña debe tener minimo 6 caracteres';
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  disabledColor: const Color.fromRGBO(66, 135, 245, 1),
                  elevation: 2,
                  color: Colors.black12,
                  onPressed: loginForm.isLoading
                      ? null
                      : () async {
                          FocusScope.of(context).unfocus();
                          if (!loginForm.isValidForm()) return;

                          loginForm.isLoading = true;

                          await Future.delayed(const Duration(seconds: 4));

                          loginForm.isLoading = false;

                          // ignore: use_build_context_synchronously
                          Navigator.pushReplacementNamed(context, 'home');
                        },
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80, vertical: 15),
                      child: Text(
                        loginForm.isLoading ? 'Espere...' : 'Ingresar',
                      )),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            )));
  }
}
