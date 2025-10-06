import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          CircleAvatar(radius: 36, backgroundColor: cs.secondary, child: const Icon(Icons.person, size: 36, color: Colors.white)),
          const SizedBox(height: 12),
          const Center(child: Text('Gabriel Coimbra', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
          const Center(child: Text('Mat: 123456-7 • Plano Ouro')),
          const SizedBox(height: 24),
          const _Tile(icon: Icons.lock, title: 'Trocar senha'),
          const _Tile(icon: Icons.notifications, title: 'Notificações'),
          const _Tile(icon: Icons.privacy_tip, title: 'Privacidade'),
          const _Tile(icon: Icons.help, title: 'Ajuda'),
          const SizedBox(height: 8),
          TextButton(
            onPressed: () => Navigator.of(context).popUntil((r) => r.isFirst),
            child: const Text('Sair'),
          )
        ],
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  final IconData icon;
  final String title;
  const _Tile({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {},
      ),
    );
  }
}