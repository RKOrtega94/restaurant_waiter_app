import 'package:flutter/material.dart';
import 'package:restaurant_waiter_app/l10n/app_localizations.dart';
import 'package:restaurant_waiter_app/shared/layout/auth/auth_layout.dart';
import 'package:restaurant_waiter_app/shared/widgets/buttons/app_button.dart';
import 'package:restaurant_waiter_app/shared/widgets/fields/app_text_field.dart';

/// {@category Features}
/// {@subCategory Auth}
///
/// Login Screen
///
/// This screen is responsible for displaying the login form.
///
/// - [route] - The route of the screen.
class LoginScreen extends StatelessWidget {
  static const String route = '/login';
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                AppLocalizations.of(context).login,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
              AppTextField(
                labelText: AppLocalizations.of(context).email,
                hintText: AppLocalizations.of(context).emailHint,
              ),
              AppTextField(
                labelText: AppLocalizations.of(context).password,
                hintText: AppLocalizations.of(context).passwordHint,
              ),
              AppButton(
                label: AppLocalizations.of(context).login,
                prefixIcon: Icon(
                  Icons.login,
                  size: 20,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
