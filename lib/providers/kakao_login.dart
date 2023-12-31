import 'package:diet_batting/models/spcial_login.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

class kakaoLogin implements SocialLogin{
  @override
  Future<bool> login() async {
    try{
      bool isInstalled = await isKakaoTalkInstalled();
      if(isInstalled){
        try {
          await UserApi.instance.loginWithKakaoTalk();
          return true;
        }catch(e){
          return false;
        }
      }else {
        try {
          await UserApi.instance.loginWithKakaoTalk();
          return true;
        }catch(e){
          return false;
        }
      }
    }catch(e){
      return false;
    }
  }

  @override
  Future<bool> logout() async {
    try {
      await UserApi.instance.unlink();
      return true;
    }catch(error){
      return false;
    }
  }
}