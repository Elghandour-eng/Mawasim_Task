// import 'dart:developer';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
//
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   // // If you're going to use other Firebase services in the background, such as Firestore,
//   // // make sure you call `initializeApp` before using other Firebase services.
//   // await Firebase.initializeApp();
//
//   log("Handling a background message: ${message.messageId}");
// }
//
// class FCM {
//   FirebaseMessaging messaging = FirebaseMessaging.instance;
//
//   Future<void> config(NavigatorState navigator, BuildContext context) async {
//     // final LocalNotification localNotification = LocalNotification();
//     FirebaseMessaging messaging = FirebaseMessaging.instance;
//
//     NotificationSettings settings = await messaging.requestPermission(
//       alert: true,
//       announcement: false,
//       badge: true,
//       carPlay: false,
//       criticalAlert: false,
//       provisional: false,
//       sound: true,
//     );
//     log('User granted permission: ${settings.authorizationStatus}');
//
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       log('Got a message whilst in the foreground!');
//       log('Message data: ${message.data}');
//       if (message.notification != null) {
//         log('Message also contained a notification: ${message.notification}');
//         // localNotification.showLocalNotification(
//         //     navigator: navigator,
//         //     title: message.notification?.title ?? '',
//         //     body: message.notification?.body,
//         //     data: message.data,
//         //     context: context);
//         // context.read<NotificationDotCubit>().changeStatus(true);
//       }
//     });
//
//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//       // handlePayload(message.data, navigator);
//     });
//
//     messaging.getInitialMessage().then((value) {
//       if (value != null) {
//         Future.delayed(const Duration(seconds: 0), () {
//           // handlePayload(value.data, navigator);
//         });
//       }
//     });
//
//     messaging.onTokenRefresh.listen((event) {
//       // final AuthenticationState authenticationState =
//       //     context.read<AuthenticationBloc>().state;
//       // if (authenticationState is AuthenticationAuthenticated) {
//       //   final User user = authenticationState.user;
//       //   context
//       //       .read<UpdateTokenCubit>()
//       //       .updateToken(token: user.data?.token ?? '', firebaseToken: event);
//       // }
//     });
//
//     FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//   }
//
//   Future<String?> getToken() async {
//     String? token = await messaging.getToken();
//     return token;
//   }
// }
