import 'package:flutter/material.dart';

class UserModel {
  final int track_rating;
  final String track_name;
  final int explicit;
  final String album_name;
  final String artist_name;
  final String track_share_url;

  UserModel(
      {required this.track_rating,
      required this.track_name,
      required this.explicit,
      required this.album_name,
      required this.artist_name,
      required this.track_share_url});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        track_rating: json['track_rating'],
        track_name: json['track_name']??'Track_name',
        explicit: json['explicit'],
        album_name: json['album_name']??'Album_name',
        artist_name: json['artist_name']??'Artist_name',
        track_share_url: json['track_share_url']);
  }
}
