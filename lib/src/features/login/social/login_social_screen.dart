import 'package:apps_user/src/common/constants/colors.dart';
import 'package:apps_user/src/common/layout/default_layout.dart';
import 'package:apps_user/src/features/login/email/login_email_screen.dart';
import 'package:apps_user/src/features/login/social/widgets/header_close.dart';
import 'package:flutter/material.dart';

import '../common/custom_text_yorijori.dart';


class LoginSocialScreen extends StatelessWidget {
  const LoginSocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 닫기
              HeaderClose(),
              // 센터
              Column(
                children: [
                  TitleYorijori(),
                  _ContentText(),
                ],
              ),
              // 하단
              Column(
                children: [
                  _NaverLoginImg(),
                  SizedBox(height: 10.0),
                  _KakaoLoginImg(),
                  SizedBox(height: 10.0),
                  _GoogleLoginImg(),
                  SizedBox(height: 10.0),
                  _EmailLoginImg(),
                  SizedBox(height: 10.0),
                  _FooterText(),
                  SizedBox(height: 50.0),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ContentText extends StatelessWidget {
  const _ContentText({super.key});

  @override
  Widget build(BuildContext context) {
  return const Text(
      '로그인하고 다양한 혜택을 받아보세요!',
      style: TextStyle(
        fontFamily: 'Noto Sans KR',
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: AppColors.ff787878,
      ),
    );
  }
}

// 네이버 로그인
class _NaverLoginImg extends StatelessWidget {
  const _NaverLoginImg({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('_NaverLoginImg');
        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginSocialScreen()));
      },
      child: Image.asset(
        'assets/img/login/btn_naverlogin.png',
      ),
    );
  }
}

// 카카오 로그인
class _KakaoLoginImg extends StatelessWidget {
  const _KakaoLoginImg({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('_KakaoLoginImg');
        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginSocialScreen()));
      },
      child: Image.asset(
        'assets/img/login/btn_kakaologin.png',
      ),
    );
  }
}

class _GoogleLoginImg extends StatelessWidget {
  const _GoogleLoginImg({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('_GoogleLoginImg');
        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginSocialScreen()));
      },
      child: Image.asset(
        'assets/img/login/btn_googlelogin.png',
      ),
    );
  }
}

// 이메일 로그인
class _EmailLoginImg extends StatelessWidget {
  const _EmailLoginImg({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //print('_EmailLoginImg');
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginEmailScreen()));
      },
      child: Image.asset(
        'assets/img/login/btn_emaillogin.png',
      ),
    );
  }
}

// 계정이 기억나지 않아요
class _FooterText extends StatelessWidget {
  const _FooterText({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('_FooterText');
        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginSocialScreen()));
      },
      child: const Text(
        '계정이 기억나지 않아요',
        style: TextStyle(
          fontFamily: 'Noto Sans KR',
          fontWeight: FontWeight.w500,
          fontSize: 14,
          decoration: TextDecoration.underline,
          color: AppColors.ff787878,
        ),
      ),
    );
  }
}





