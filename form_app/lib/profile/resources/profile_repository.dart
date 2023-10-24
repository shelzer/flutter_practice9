import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_app/profile/bloc/profile_bloc.dart';
import 'package:form_app/profile/resources/profile_provider.dart';

class ProfileUserRepository {
  final _provider = ProfileProvider();
  Future<void> fetchProfileData(FetchProfileEvent event, Emitter<ProfileState> emit) async {
    emit(LoadingProfileState());
    try{
      final fetchedProfile = await _provider.fetchProfile();
      emit(LoadedProfileState(fetchedProfile));
    }
    catch(_){
      emit(FailureProfileState());
    }
  }
}