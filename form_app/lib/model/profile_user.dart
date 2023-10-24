import 'package:json_annotation/json_annotation.dart';

part 'profile_user.g.dart';

@JsonSerializable()
class ProfileUser {
  final int id;
  final int userId;
  final String title;
  final String body;

  ProfileUser({
    required this.id,
    required this.userId,
    required this.title,
    required this.body
  });
}
