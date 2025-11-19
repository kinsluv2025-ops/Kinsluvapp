import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';
import '../../config.dart';

class ZegoService {
  // Using prebuilt UI kit for simplicity
  static Widget hostView(String roomID, String userID, String userName) {
    return ZegoUIKitPrebuiltLiveStreaming(
      appID: ZEGO_APP_ID,
      appSign: ZEGO_SERVER_SECRET,
      userID: userID,
      userName: userName,
      liveID: roomID,
      prebuiltConfig: ZegoUIKitPrebuiltLiveStreamingConfig.host(),
    );
  }

  static Widget viewerView(String roomID, String userID, String userName) {
    return ZegoUIKitPrebuiltLiveStreaming(
      appID: ZEGO_APP_ID,
      appSign: ZEGO_SERVER_SECRET,
      userID: userID,
      userName: userName,
      liveID: roomID,
      prebuiltConfig: ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
    );
  }
}
