import 'package:flutter/material.dart';
import '../services/zego_service.dart';
import '../widgets/gift_tray.dart';

class ViewerLivePagePlaceholder extends StatelessWidget {
  const ViewerLivePagePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
    final liveId = args != null ? args['liveId'] as String : 'room_1';
    final hostName = args != null ? args['hostName'] as String : 'Host';

    const userId = 'viewer_1';
    const userName = 'Viewer One';

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: ZegoService.viewerView(liveId, userId, userName),
          ),
          Positioned(
            bottom: 20,
            left: 12,
            right: 12,
            child: Row(
              children: [
                Expanded(child: Container(
                  height: 48,
                  decoration: BoxDecoration(color: Colors.white24, borderRadius: BorderRadius.circular(24)),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  alignment: Alignment.centerLeft,
                  child: const Text('Chat (placeholder)'),
                )),
                const SizedBox(width: 8),
                GiftTray(onSend: (giftId) {
                  // TODO: send gift event to backend
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Sent gift \$giftId')));
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}
