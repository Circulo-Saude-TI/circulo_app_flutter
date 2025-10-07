import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _senha = TextEditingController();
  bool _remember = true;
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Entrar')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 12),
              Image.asset('assets/images/logo.png', width: 80, height: 80),
              const SizedBox(height: 24),
              TextFormField(
                controller: _email,
                decoration: const InputDecoration(labelText: 'E-mail ou CPF'),
                validator: (v) =>
                    (v == null || v.isEmpty) ? 'Informe seu e-mail/CPF' : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _senha,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  suffixIcon: IconButton(
                    icon: Icon(
                        _obscure ? Icons.visibility_off : Icons.visibility),
                    onPressed: () => setState(() => _obscure = !_obscure),
                  ),
                ),
                obscureText: _obscure,
                validator: (v) =>
                    (v == null || v.length < 4) ? 'Senha inválida' : null,
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Switch(
                      value: _remember,
                      onChanged: (v) => setState(() => _remember = v)),
                  const Text('Lembrar de mim'),
                ],
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      Navigator.pushReplacementNamed(context, AppRoutes.main);
                    }
                  },
                  child: const Text('Acessar'),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Text('Coimbroxdev • v1.0.0',
              textAlign: TextAlign.center, style: TextStyle(color: cs.outline)),
        ),
      ),
    );
  }
}
