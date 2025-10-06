import 'package:flutter/material.dart';

class GuiaMedicoScreen extends StatefulWidget {
  const GuiaMedicoScreen({super.key});

  @override
  State<GuiaMedicoScreen> createState() => _GuiaMedicoScreenState();
}

class _GuiaMedicoScreenState extends State<GuiaMedicoScreen> {
  final _query = TextEditingController();
  final _items = const [
    {'nome': 'Hospital Círculo - Pronto Atendimento', 'tipo': 'Hospital', 'cidade': 'Caxias do Sul'},
    {'nome': 'Clínica ABC', 'tipo': 'Clínica', 'cidade': 'Porto Alegre'},
    {'nome': 'Dr. João da Silva', 'tipo': 'Cardiologista', 'cidade': 'Caxias do Sul'},
    {'nome': 'Dra. Maria Souza', 'tipo': 'Pediatra', 'cidade': 'Farroupilha'},
  ];

  @override
  Widget build(BuildContext context) {
    final q = _query.text.toLowerCase();
    final filtered = _items.where((e) => e.values.any((v) => v.toString().toLowerCase().contains(q))).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Guia Médico')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _query,
              decoration: InputDecoration(
                hintText: 'Buscar por nome, especialidade ou cidade',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _query.text.isEmpty
                    ? null
                    : IconButton(icon: const Icon(Icons.clear), onPressed: () { setState(() { _query.clear(); }); }),
              ),
              onChanged: (_) => setState(() {}),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.separated(
                itemCount: filtered.length,
                separatorBuilder: (_, __) => const SizedBox(height: 8),
                itemBuilder: (context, i) {
                  final item = filtered[i];
                  return Card(
                    child: ListTile(
                      title: Text(item['nome'] as String),
                      subtitle: Text('${item['tipo']} • ${item['cidade']}'),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {},
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}