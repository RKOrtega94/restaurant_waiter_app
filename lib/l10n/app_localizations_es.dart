// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get login => 'Iniciar sesión';

  @override
  String get appTitle => 'Restaurante Camarero';

  @override
  String get email => 'Correo electrónico';

  @override
  String get password => 'Contraseña';

  @override
  String get emailHint => 'Introduce tu correo electrónico';

  @override
  String get passwordHint => 'Introduce tu contraseña';

  @override
  String get dashboard => 'Tablero';

  @override
  String get orders => 'Pedidos';

  @override
  String get tables => 'Mesas';

  @override
  String get settings => 'Ajustes';
}
