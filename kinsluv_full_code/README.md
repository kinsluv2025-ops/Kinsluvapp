# Kinsluv Live — Full Flutter Scaffold

This project is a generated scaffold for the Kinsluv Live streaming app.
It includes example integrations with Appwrite (backend) and ZEGOCLOUD (Zego) for live streaming.
**IMPORTANT**: Replace all placeholder keys and endpoints in `lib/config.dart` before running.

Features in this scaffold:
- Appwrite service layer (auth, simple DB operations)
- Zego service layer using `zego_uikit_prebuilt_live_streaming` for hosting & viewing
- Basic pages: Splash, Home (live grid), Go Live setup, Host live page, Viewer page
- Gift tray UI and coins wallet flow (client-side placeholders)
- Simple models and widgets

Next steps:
1. Add Appwrite endpoint & project ID in `lib/config.dart`.
2. Add ZEGOCLOUD AppID & AppSign in `lib/config.dart`.
3. Run `flutter pub get`.
4. Implement Appwrite collection setup (users, live_streams, gifts, transactions).
5. Test locally and iterate.

