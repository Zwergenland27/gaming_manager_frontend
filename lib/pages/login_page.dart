import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gaming_manager_frontend/pages/register_page.dart';
import 'package:gaming_manager_frontend/theme/theme_constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gaming_manager_frontend/widgets/input_field.dart';
import 'package:gaming_manager_frontend/widgets/vertical_space.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _header(context),
                  _inputFields(context),
                  _forgotPassword(context),
                  _register(context),
                ]
            )
        )
    );
  }

  _header(context){
    var textTheme = Theme.of(context).textTheme;
    var localizations = AppLocalizations.of(context)!;
    return Column(
        children: [
          Text(localizations.welcomeBack, style: textTheme.headlineLarge),
          const VerticalSpace(10),
          Text(localizations.loginExplanation, style: textTheme.bodyLarge),
        ]
    );
  }

  _inputFields(context){
    var localizations = AppLocalizations.of(context)!;
    return Column(
        children: [
          InputField(
            localizations.emailOrUsername,
            icon: const Icon(Icons.person),
          ),
          const VerticalSpace(20),
          InputField(
            localizations.password,
            icon: const Icon(Icons.password),
            obscureText: true,
          ),
          const VerticalSpace(20),
          ElevatedButton(
            onPressed: () => {},
            child: Text(localizations.login),
          ),
        ]
    );
  }

  _forgotPassword(context){
    var textTheme = Theme.of(context).textTheme;
    var localizations = AppLocalizations.of(context)!;
    return RichText(
        text: TextSpan(
          text: localizations.forgotPassword,
          style: textTheme.highlight,
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              print("Forgot password clicked");
            },
        )
    );
  }

  _register(context){
    var textTheme = Theme.of(context).textTheme;
    var localizations = AppLocalizations.of(context)!;
    return RichText(
      text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                text: "${localizations.noAccount} ",
                style: textTheme.bodyLarge
            ),
            TextSpan(
              text: localizations.registerHere,
              style: textTheme.highlight,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegisterPage())
                  );
                },
            ),
          ]
      ),
    );
  }
}