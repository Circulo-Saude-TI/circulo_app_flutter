import 'package:flutter/material.dart';
import '../routes/app_routes.dart';
import '../widgets/home_quick_action.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Círculo Saúde'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: cs.primaryContainer,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                const Icon(Icons.account_circle, size: 48),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Olá, Gabriel!', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('Plano: Ouro • Mat: 123456-7'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            children: [
              HomeQuickAction(title: 'Carteirinha', icon: Icons.badge_rounded, onTap: () => Navigator.pushNamed(context, AppRoutes.carteirinha)),
              HomeQuickAction(title: 'Guia Médico', icon: Icons.local_hospital_rounded, onTap: () => Navigator.pushNamed(context, AppRoutes.guia)),
              HomeQuickAction(title: 'Agendamentos', icon: Icons.event_rounded, onTap: () => Navigator.pushNamed(context, AppRoutes.agendamentos)),
              HomeQuickAction(title: 'Perfil', icon: Icons.person_rounded, onTap: () => Navigator.pushNamed(context, AppRoutes.perfil)),
            ],
          ),
        ],
      ),
    );
  }
}