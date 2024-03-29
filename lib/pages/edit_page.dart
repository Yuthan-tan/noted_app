import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Note',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 2,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Title',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Title Wajib Diisi';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Content',
              border: OutlineInputBorder(),
            ),
            maxLines: 8,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Content Wajib Diisi';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.save),
      ),
    );
  }
}
