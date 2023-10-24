import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_app/model/profile_user.dart';
import 'package:form_app/profile/bloc/profile_bloc.dart';


class FourthPage extends StatefulWidget {
  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  late ProfileBloc profileBloc;
  ProfileUser? profileUser;

  @override
  void initState() {
    profileBloc = BlocProvider.of<ProfileBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer(
        bloc: profileBloc,
        listener: (context, state) {
          // ignore: avoid_print
          print("hererrer $state");
          if(state is FailureProfileState){
            return;
          }
        },
        builder: (context, state) {
          if (state is LoadingProfileState){
            return const Center(child: CircularProgressIndicator(
              color: Colors.red,
            ),);
          }
          if(state is LoadedProfileState) {
            profileUser = state.profileUser;
          }
          return Container(
            color: Colors.white,
            child: Center(
              child: Text(
                profileUser!.title,
                style: const TextStyle(
                  color: Colors.green,
                  fontSize: 45,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
