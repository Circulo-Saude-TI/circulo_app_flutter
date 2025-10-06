import 'package:flutter/material.dart';

class AgendamentosScreen extends StatelessWidget {
  const AgendamentosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final agendamentos = const [
      {'titulo': 'Consulta Cardiologia', 'data': '10/10/2025 14:00', 'local': 'Hospital Círculo'},
      {'titulo': 'Exame Hemograma', 'data': '15/10/2025 09:30', 'local': 'Laboratório Círculo'},
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Agendamentos')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: agendamentos.length,
        separatorBuilder: (_, __) => const SizedBox(height: 8),
        itemBuilder: (context, i) {
          final a = agendamentos[i];
          return Card(
            child: ListTile(
              leading: const Icon(Icons.event),
              title: Text(a['titulo'] as String),
              subtitle: Text('${a['data']} • ${a['local']}'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}