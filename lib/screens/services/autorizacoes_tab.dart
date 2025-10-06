import 'package:flutter/material.dart';

class AutorizacoesTab extends StatelessWidget {
  const AutorizacoesTab({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    final autorizacoes = [
      {
        'titulo': 'CONSULTA EM CONSULTÓRIO',
        'status': 'EM PROCESSAMENTO TOTAL OU PARCIAL',
        'statusColor': Colors.amber,
        'dataSolic': '23/07/2025',
        'dataAutor': '23/07/2025',
        'dataValidade': '21/10/2025',
        'beneficiario': 'GABRIEL COIMBRA DE OLIVEIRA DA SILVA',
        'solicitante': 'GABRIEL COIMBRA DE OLIVEIRA DA SILVA',
        'guia': '202500252224',
      },
      {
        'titulo': 'EXAMES EM CONSULTÓRIO',
        'status': 'CANCELADA',
        'statusColor': Colors.grey,
        'dataSolic': '23/07/2025',
        'dataAutor': '23/07/2025',
        'dataValidade': '21/10/2025',
        'beneficiario': 'GABRIEL COIMBRA DE OLIVEIRA DA SILVA',
        'solicitante': 'GABRIEL COIMBRA DE OLIVEIRA DA SILVA',
        'guia': '202500252240',
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: autorizacoes.length,
      itemBuilder: (context, i) {
        final a = autorizacoes[i];
        final Color statusColor = a['statusColor'] as Color;
        final String titulo = a['titulo'] as String;
        final String status = a['status'] as String;
        final String guia = a['guia'] as String;
        final String dataSolic = a['dataSolic'] as String;
        final String dataAutor = a['dataAutor'] as String;
        final String dataValidade = a['dataValidade'] as String;
        final String beneficiario = a['beneficiario'] as String;
        final String solicitante = a['solicitante'] as String;

        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          color: statusColor.withOpacity(0.05),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      status,
                      style: TextStyle(
                        color: statusColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    Text('Guia: $guia'),
                  ],
                ),
                const Divider(),
                Text('Data Solic.: $dataSolic'),
                Text('Data Autor.: $dataAutor'),
                Text('Validade: $dataValidade'),
                const SizedBox(height: 8),
                Text('Beneficiário: $beneficiario'),
                Text('Solicitante: $solicitante'),
              ],
            ),
          ),
        );
      },
    );
  }
}
