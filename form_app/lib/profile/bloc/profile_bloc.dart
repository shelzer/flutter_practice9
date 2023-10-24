import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_app/model/profile_user.dart';
import 'package:form_app/profile/resources/profile_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final _repository = ProfileUserRepository();
  ProfileBloc() : super(ProfileInitial()) {
    on<FetchProfileEvent>(_repository.fetchProfileData);
  }
}