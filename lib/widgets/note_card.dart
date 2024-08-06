import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:taskflow/styles/app_style.dart';

Widget noteCard(Function()? onTap, QueryDocumentSnapshot doc) {
  return Container(
    padding: EdgeInsets.all(8.0),
    margin: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: AppStyle.cardsColor[doc['color_id']],
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Stack(
      children: [
        InkWell(
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doc["judul"],
                style: AppStyle.mainTitle,
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                doc["tanggal"],
                style: AppStyle.dateTitle,
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                doc["konten"],
                style: AppStyle.mainContent,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        Positioned(
          right: 0.0,
          top: 0.0,
          child: IconButton(
            onPressed: () async {
              await FirebaseFirestore.instance
                  .collection("taskflow_note")
                  .doc(doc.id)
                  .delete();
            },
            icon: Icon(Icons.delete),
            color: Colors.red,
          ),
        ),
      ],
    ),
  );
}
