import 'package:flutter/material.dart';

class UtilizacoesTab extends StatelessWidget {
  const UtilizacoesTab({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final consultas = [
      {
        'titulo': 'EM CONSULTÓRIO NO HORA NORMAL OU PREESTA',
        'data': '16/09/2025',
        'valor': '35,00',
        'profissional': 'ELIZANGELA PIMENTEL MACHADO',
      },
      {
        'titulo': 'EM CONSULTÓRIO NO HORA NORMAL OU PREESTA',
        'data': '02/09/2025',
        'valor': '0,00',
        'profissional': 'GABRIEL COIMBRA DE OLIVEIRA DA SILVA',
      },
    ];

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: color.secondary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Setembro 2025',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Text('Período: 01/09/2025 a 30/09/2025'),
              SizedBox(height: 4),
              Text('Total de utilização: R\$ 35,00'),
            ],
          ),
        ),
        const SizedBox(height: 16),
        const Text('CONSULTAS',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        const SizedBox(height: 8),
        for (var c in consultas)
          Card(
            margin: const EdgeInsets.only(bottom: 8),
            child: ListTile(
              title: Text(c['titulo']!),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Data: ${c['data']}'),
                  Text('Profissional: ${c['profissional']}'),
                ],
              ),
              trailing: Text('R\$ ${c['valor']}'),
            ),
          ),
      ],
    );
  }
}
