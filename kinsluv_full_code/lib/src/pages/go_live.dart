import 'package:flutter/material.dart';

class GoLivePage extends StatefulWidget {
  const GoLivePage({super.key});

  @override
  State<GoLivePage> createState() => _GoLivePageState();
}

class _GoLivePageState extends State<GoLivePage> {
  final _titleCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Go Live')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _titleCtrl, decoration: const InputDecoration(labelText: 'Stream title')),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                // TODO: create live doc on Appwrite and then navigate to host_live
                final liveId = DateTime.now().millisecondsSinceEpoch.toString();
                Navigator.pushNamed(context, '/host_live', arguments: {
                  'liveId': liveId,
                  'title': _titleCtrl.text,
                });
              },
              child: const Text('Start Live'),
            )
          ],
        ),
      ),
    );
  }
}
