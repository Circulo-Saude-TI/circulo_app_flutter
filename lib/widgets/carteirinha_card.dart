import 'package:flutter/material.dart';

class CarteirinhaCard extends StatelessWidget {
  final String nome;
  final String matricula;
  final String validade;
  final String plano;
  const CarteirinhaCard({
    super.key,
    required this.nome,
    required this.matricula,
    required this.validade,
    required this.plano,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [cs.primary, cs.secondary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Círculo Saúde', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
              const Icon(Icons.health_and_safety, color: Colors.white),
            ],
          ),
          const SizedBox(height: 24),
          Text(nome, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
          const SizedBox(height: 12),
          _kv('Matrícula', matricula),
          _kv('Plano', plano),
          _kv('Validade', validade),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(child: _fakeBarcode()),
            ],
          )
        ],
      ),
    );
  }

  Widget _kv(String k, String v) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          Text('$k: ', style: const TextStyle(color: Colors.white70, fontWeight: FontWeight.w600)),
          Flexible(child: Text(v, style: const TextStyle(color: Colors.white))),
        ],
      ),
    );
  }

  // Placeholder de "código de barras" sem dependências.
  Widget _fakeBarcode() {
    return LayoutBuilder(
      builder: (context, c) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(50, (i) {
            final w = (i % 5 == 0) ? 3.0 : 1.0;
            return Container(width: w, height: 50, color: i.isEven ? Colors.white : Colors.white24);
          }),
        );
      },
    );
  }
}