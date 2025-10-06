import 'package:circulo_saude_app/screens/services/services_screen.dart';
import 'package:flutter/material.dart';

import '../screens/agendamentos_screen.dart';
import '../screens/carteirinha_screen.dart';
import '../screens/guia_medico_screen.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/perfil_screen.dart';
import '../screens/splash_screen.dart';

class AppRoutes {
  static const splash = '/';
  static const login = '/login';
  static const home = '/home';
  static const carteirinha = '/carteirinha';
  static const guia = '/guia';
  static const agendamentos = '/agendamentos';
  static const perfil = '/perfil';
  static const servicos = '/servicos';

  static Map<String, WidgetBuilder> get routes => {
        splash: (_) => const SplashScreen(),
        login: (_) => const LoginScreen(),
        home: (_) => const HomeScreen(),
        carteirinha: (_) => const CarteirinhaScreen(),
        guia: (_) => const GuiaMedicoScreen(),
        agendamentos: (_) => const AgendamentosScreen(),
        perfil: (_) => const PerfilScreen(),
        servicos: (_) => const ServicesScreen(),
      };
}
