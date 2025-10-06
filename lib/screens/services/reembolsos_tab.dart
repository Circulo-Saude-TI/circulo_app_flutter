import 'package:flutter/material.dart';

class ReembolsosTab extends StatelessWidget {
  const ReembolsosTab({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.inbox_rounded, size: 64, color: color.outlineVariant),
          const SizedBox(height: 16),
          const Text(
            'Nenhum item disponível',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 4),
          const Text(
            'Não localizamos itens disponíveis.\n'
            'Caso não tenha encontrado o que busca, entre em contato com o suporte.',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('Nova Solicitação'),
          )
        ],
      ),
    );
  }
}
