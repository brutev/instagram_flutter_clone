import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String postUrl;
  final String username;
  final String postId;
  final String profImage;
  final DateTime datePublished;
  final likes;

  const Post({
    required this.uid,
    required this.description,
    required this.username,
    required this.postId,
    required this.postUrl,
    required this.profImage,
    required this.datePublished,
    required this.likes,
  });

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
        username: snapshot['username'],
        uid: snapshot['uid'],
        likes: snapshot['likes'],
        postUrl: snapshot['postUrl'],
        datePublished: snapshot['datePublished'],
        postId: snapshot['postId'],
        profImage: snapshot['profImage'],
        description: snapshot['description']);
  }

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "description": description,
        "postUrl": postUrl,
        "datePublished": datePublished,
        "profImage": profImage,
        "postId": postId,
      };
}
