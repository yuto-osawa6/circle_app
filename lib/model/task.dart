// // import 'package:cloud_firestore/cloud_firestore.dart';

// class Diary {
//   String? docId;
//   Timestamp date;
//   String title;
//   String review;
//   String image;

//   Diary(this.date, this.title, this.review, this.image);

//   factory Diary.toModel(String docId, Map<String, dynamic> json) {
//     final diary = Diary(
//       json['date'],
//       json['title'],
//       json['review'],
//       json['image'],
//     );
//     diary.docId = docId;
//     return diary;
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'date': date,
//       'title': title,
//       'review': review,
//       'image': image,
//     };
//   }
// }

// import 'dart:ffi';

class Tasks {
  final int id;
  final String title;

  Tasks({
    required this.id,
    required this.title
  });

  factory Tasks.fromJson(Map<String, dynamic> json) {
    return Tasks(
        id: json['id'],
        title: json['title']);
  }
}