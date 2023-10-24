part of 'profile_bloc.dart';

@immutable 
abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class LoadingProfileState extends ProfileState {}

class LoadedProfileState extends ProfileState {
  final ProfileUser profileUser;
  LoadedProfileState(this.profileUser);
}

class FailureProfileState extends ProfileState {}