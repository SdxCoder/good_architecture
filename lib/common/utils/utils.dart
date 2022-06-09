
// import 'package:flutter/material.dart';

// import '../routing/routes.dart';

// /// *@
// class SnackMsg {
//   static const int _snackDurationSecs = 2;
//    static final BuildContext? context =
//       appRouter.navigatorKey.currentState?.overlay?.context;

//   static void err(String text, {bool pop = false}) {
//     if (text.isNotEmpty) {
//       Get.snackbar('', text,
//           titleText: const Offstage(),
//           duration: const Duration(seconds: _snackDurationSecs),
//           backgroundColor: AppTheme.textGrayColor,
//           padding: const EdgeInsets.all(Dimens.paddingLarge),
//           margin: const EdgeInsets.all(Dimens.paddingLarge),
//           colorText: Colors.white,
//           snackPosition: SnackPosition.BOTTOM);
//     }

//     if (pop) {
//       Future.delayed(const Duration(seconds: _snackDurationSecs), () {
//         appRouter.pop();
//       });
//     }
//   }

//   static void success(String text, {bool pop = true}) {
//     if (text.isNotEmpty) {
//       Get.snackbar('', text,
//           titleText: const Offstage(),
//           duration: const Duration(seconds: _snackDurationSecs),
//           backgroundColor: AppTheme.greenColor,
//           padding: const EdgeInsets.all(Dimens.paddingLarge),
//           margin: const EdgeInsets.all(Dimens.paddingLarge),
//           colorText: Colors.white,
//           snackPosition: SnackPosition.BOTTOM);
//     }

//     if (pop) {
//       Future.delayed(const Duration(seconds: _snackDurationSecs), () {
//         appRouter.pop();
//       });
//     }
//   }

//   static void connectionSuccess(String text) {
//     if (text.isNotEmpty) {
//       Get.snackbar('', '',
//           titleText: const Offstage(),
//           messageText: Text(text,
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                 fontSize: 11,
//                 color: Colors.white,
//               )),
//           duration: const Duration(seconds: 4),
//           backgroundColor: Colors.green,
//           padding: const EdgeInsets.all(4),
//           margin: EdgeInsets.zero,
//           colorText: Colors.white,
//           borderRadius: 0,
//           snackPosition: SnackPosition.BOTTOM);
//     }
//   }

//   static void noConnection(String text) {
//     if (text.isNotEmpty) {
//       Get.snackbar('', '',
//           titleText: const Offstage(),
//           messageText: Text(text,
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                 fontSize: 11,
//                 color: Colors.white,
//               )),
//           duration: const Duration(seconds: 4),
//           backgroundColor: AppTheme.orangeColor,
//           padding: const EdgeInsets.all(4),
//           margin: EdgeInsets.zero,
//           colorText: Colors.white,
//           borderRadius: 0,
//           snackPosition: SnackPosition.BOTTOM);
//     }
//   }

//   // static void action(String text, {bool pop = true, Function()? onPressed}) {
//   //   if (text.isNotEmpty) {
//   //     Get.snackbar('', text,
//   //         isDismissible: false,
//   //         mainButton: TextButton(
//   //             onPressed: onPressed, child: Text(TranslateTextOf.lblBtnAdd.tr)),
//   //         titleText: const Offstage(),
//   //         backgroundColor: AppTheme.greenColor,
//   //         duration: Duration(),
//   //         padding: const EdgeInsets.all(Dimens.paddingLarge),
//   //         margin: const EdgeInsets.all(Dimens.paddingLarge),
//   //         colorText: Colors.white,
//   //         snackPosition: SnackPosition.BOTTOM);
//   //   }

//   //   if (pop) {
//   //     Future.delayed(const Duration(seconds: _snackDurationSecs), () {
//   //       appRouter.pop();
//   //     });
//   //   }
//   // }


//   static void toast(String text) {
//     Fluttertoast.showToast(
      
//         toastLength: Toast.LENGTH_LONG,
//         msg: text,
//         fontSize: 14.0,
//         backgroundColor: Colors.black);
//   }
// }
