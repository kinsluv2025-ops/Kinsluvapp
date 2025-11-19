import 'package:flutter/material.dart';

class GiftTray extends StatelessWidget {
  final void Function(String giftId) onSend;
  const GiftTray({super.key, required this.onSend});

  @override
  Widget build(BuildContext context) {
    final gifts = [
      {'id': 'g1', 'name': 'Rose', 'price': 10},
      {'id': 'g2', 'name': 'Diamond', 'price': 50},
      {'id': 'g3', 'name': 'Rocket', 'price': 200},
    ];

    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.white70, borderRadius: BorderRadius.circular(28)),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: gifts.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, idx) {
          final g = gifts[idx];
          return GestureDetector(
            onTap: () => onSend(g['id'] as String),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(18)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.card_giftcard),
                  const SizedBox(height: 4),
                  Text(g['name'].toString()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
