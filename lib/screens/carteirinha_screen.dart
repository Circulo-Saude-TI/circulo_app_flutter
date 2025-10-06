import 'package:flutter/material.dart';

import '../widgets/carteirinha_card.dart';

class CarteirinhaScreen extends StatelessWidget {
  const CarteirinhaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Carteirinha')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CarteirinhaCard(
              nome: 'Gabriel Coimbra',
              matricula: '123456-7',
              plano: 'Ouro',
              validade: '12/2026',
            ),
            SizedBox(height: 12),
            Text('Apresente esta carteirinha na recepção.'),
          ],
        ),
      ),
    );
  }
}
