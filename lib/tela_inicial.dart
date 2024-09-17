import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Inicial'),
        backgroundColor: Colors.lightBlue, // Cor roxa na barra de navegação
        centerTitle: true,
        elevation: 6,
      ),
       drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Joao'),
              accountEmail: Text('Joao@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.task_alt_sharp),
              title: const Text('Lista de Tarefas'),
              onTap: () {
                // Ação ao clicar em Lista de Tarefas
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Bem vindo à Tela Inicial!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
