import 'package:flutter/material.dart';
import 'package:restaurant_waiter_app/l10n/app_localizations.dart';
import 'package:restaurant_waiter_app/src/shared/layout/auth/auth_layout.dart';
import 'package:restaurant_waiter_app/src/shared/widgets/fields/app_text_field.dart';

class LoginScreen extends StatelessWidget {
  static const String route = '/login';
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      child: SingleChildScrollView(
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context).login,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            AppTextField(),
          ],
        ),
      ),
    );
  }
}
