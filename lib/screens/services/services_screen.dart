import 'package:circulo_saude_app/screens/services/autorizacoes_tab.dart';
import 'package:circulo_saude_app/screens/services/reembolsos_tab.dart';
import 'package:circulo_saude_app/screens/services/utilizacoes_tab.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Serviços'),
          bottom: TabBar(
            labelColor: color.primary,
            indicatorColor: color.primary,
            tabs: const [
              Tab(text: 'Autorizações'),
              Tab(text: 'Utilizações'),
              Tab(text: 'Reembolsos'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            AutorizacoesTab(),
            UtilizacoesTab(),
            ReembolsosTab(),
          ],
        ),
      ),
    );
  }
}
