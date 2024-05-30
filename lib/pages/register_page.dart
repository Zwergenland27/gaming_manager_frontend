import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gaming_manager_frontend/pages/login_page.dart';
import 'package:gaming_manager_frontend/theme/theme_constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gaming_manager_frontend/widgets/input_field.dart';
import 'package:gaming_manager_frontend/widgets/vertical_space.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: MediaQuery.of(context).size.height - 50,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _header(context),
                      _inputFields(context),
                      _login(context),
                    ]
                )
            )
        )
    );
  }

  _header(context){
    var textTheme = Theme.of(context).textTheme;
    var localizations = AppLocalizations.of(context)!;
    return Column(
        children: [
          Text(localizations.register, style: textTheme.headlineLarge),
          const VerticalSpace(10),
          Text(localizations.registerExplanation, style: textTheme.bodyLarge),
        ]
    );
  }

  _inputFields(context){
    var localizations = AppLocalizations.of(context)!;
    return Column(
        children: [
          InputField(
            localizations.email,
            icon: const Icon(Icons.email),
          ),
          const VerticalSpace(20),
          InputField(
            localizations.username,
            icon: const Icon(Icons.person),
          ),
          const VerticalSpace(20),
          InputField(
            localizations.firstname,
            icon: const Icon(Icons.person),
          ),
          const VerticalSpace(20),
          InputField(
            localizations.lastname,
            icon: const Icon(Icons.person),
          ),
          const VerticalSpace(20),
          InputField(
            localizations.password,
            icon: const Icon(Icons.password),
            obscureText: true,
          ),
          const VerticalSpace(20),
          InputField(
            localizations.repeatPassword,
            icon: const Icon(Icons.password),
            obscureText: true,
          ),
          const VerticalSpace(20),
          ElevatedButton(
            onPressed: () => {},
            child: Text(localizations.register),
          ),
        ]
    );
  }

  _login(context){
    var textTheme = Theme.of(context).textTheme;
    var localizations = AppLocalizations.of(context)!;
    return RichText(
      text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                text: "${localizations.hasAccount} ",
                style: textTheme.bodyLarge
            ),
            TextSpan(
              text: localizations.login,
              style: textTheme.highlight,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage())
                  );
                },
            ),
          ]
      ),
    );
  }
}