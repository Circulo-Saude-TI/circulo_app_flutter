import 'package:flutter/material.dart';
import '../screens/splash_screen.dart';
import '../screens/login_screen.dart';
import '../screens/home_screen.dart';
import '../screens/carteirinha_screen.dart';
import '../screens/guia_medico_screen.dart';
import '../screens/agendamentos_screen.dart';
import '../screens/perfil_screen.dart';

class AppRoutes {
  static const splash = '/';
  static const login = '/login';
  static const home = '/home';
  static const carteirinha = '/carteirinha';
  static const guia = '/guia';
  static const agendamentos = '/agendamentos';
  static const perfil = '/perfil';

  static Map<String, WidgetBuilder> get routes => {
        splash: (_) => const SplashScreen(),
        login: (_) => const LoginScreen(),
        home: (_) => const HomeScreen(),
        carteirinha: (_) => const CarteirinhaScreen(),
        guia: (_) => const GuiaMedicoScreen(),
        agendamentos: (_) => const AgendamentosScreen(),
        perfil: (_) => const PerfilScreen(),
      };
}