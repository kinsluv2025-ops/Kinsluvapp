import 'package:flutter/material.dart';
import '../widgets/live_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Placeholder list of live streams
    final lives = List.generate(6, (i) => {
      'id': 'live_\$i',
      'title': 'Live Stream \$i',
      'hostName': 'Host \$i',
      'viewers': 100 + i * 5,
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kinsluv'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.wallet_giftcard)),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/go_live'),
        child: const Icon(Icons.videocam),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.78,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemCount: lives.length,
          itemBuilder: (context, idx) {
            final item = lives[idx];
            return LiveCard(
              id: item['id']!,
              title: item['title']!,
              hostName: item['hostName']!,
              viewers: item['viewers'] as int,
              onTap: () {
                Navigator.pushNamed(context, '/viewer_live', arguments: {
                  'liveId': item['id'],
                  'hostName': item['hostName'],
                });
              },
            );
          },
        ),
      ),
    );
  }
}
