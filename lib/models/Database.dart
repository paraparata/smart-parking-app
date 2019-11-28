// import 'package:cloud_firestore/cloud_firestore.dart';

// final dbAplikasi = Firestore.instance;
// String user = "nama";
// // String email = "email@gmail.com";
// String pw = "1234";
// String plat = "D 1234 AS";
// String hp = "085555555";

// // void signUp() async {
// //   await dbAplikasi
// //     .collection("user")
// //     .document("user")
// //     .setData({
// //         'user' : [user, pw, plat, hp]
// //       });
// // }

// // void getUser() {
// //   dbAplikasi
// //       .collection("user")
// //       .getDocuments()
// //       .then((QuerySnapshot snapshot) {
// //     snapshot.documents.forEach((f) => print('${f.data}}'));
// //   });
// // }

// void getSlot() {
//   dbAplikasi
//       .collection("slot")
//       .getDocuments()
//       .then((QuerySnapshot snapshot) {
//     snapshot.documents.forEach((f) => print('${f.data}}'));
//   });
// }

// // void updateUser() {
// //   try {
// //     dbAplikasi
// //         .collection('user')
// //         .document(user)
// //         .updateData({'user' : [user, pw, plat, hp]});
// //   } catch (e) {
// //     print(e.toString());
// //   }
// // }