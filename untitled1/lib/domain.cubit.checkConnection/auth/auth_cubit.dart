import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/dialouges/toast.dart';
import 'auth_state.dart';


class PhoneAuthCubit extends Cubit<AuthState> {
  PhoneAuthCubit() : super(initialState());


  static PhoneAuthCubit get(context) => BlocProvider.of(context);

  FirebaseAuth auth = FirebaseAuth.instance;
  String? id;

  PhoneAuth(String? phone) {
    emit(PhoneAuthLoading());
    auth.verifyPhoneNumber(
        phoneNumber: phone!,

        timeout: const Duration(seconds: 60),

        verificationCompleted: (credential) {
          auth.signInWithCredential(credential).then((value) =>
          {emit(OtpSuccess())})
              .catchError((error)
          {
            showToast(msg:error ,state:ToastedStates.ERROR );
            emit(OtpFailed(error));
          });
        },

        verificationFailed: (error) {
          showToast(msg:error.message.toString() ,state:ToastedStates.ERROR );
          emit(OtpFailed(error.toString()));
        },
        codeSent: (String? PhoneId, [int? token]) {
          id = PhoneId!;
          emit(PhoneAuthSuccess(phone));
        },
        codeAutoRetrievalTimeout: (String time) {
          print('TimeOut');
          emit(OtpFailed('TimeOut'));
        });
  }

  void submitOTP(String otpCode) {
    emit(OtpLoading());
    print('otpCode $otpCode');
    AuthCredential credential = PhoneAuthProvider.credential(verificationId: id!, smsCode: otpCode);
    auth.signInWithCredential(credential).then((value) {
      if(value.user!=null){

      }else{
        showToast(msg:'login_wrong' ,state:ToastedStates.WARNING );
        emit(OtpFailed(onError.toString()));
      }
    } ).catchError((onError){
      print('${onError.toString()}');
      showToast(msg:'login_wrong' ,state:ToastedStates.WARNING );
      emit(OtpFailed(onError.toString()));
    });
  }
}
