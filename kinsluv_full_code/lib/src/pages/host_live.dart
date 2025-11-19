import 'package:flutter/material.dart';
import '../services/zego_service.dart';

class HostLivePagePlaceholder extends StatelessWidget {
  const HostLivePagePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
    final liveId = args != null ? args['liveId'] as String : 'room_host';
    final title = args != null ? args['title'] as String : 'Live Title';
    // For demo, user id fixed
    const userId = 'host_1';
    const userName = 'Host One';

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ZegoService.hostView(liveId, userId, userName),
            ),
            Container(
              height: 96,
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Live: \$title'),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('End'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
