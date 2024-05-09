import 'dart:convert';
import 'dart:io';

import 'package:apps_user/src/common/constants/colors.dart';
import 'package:apps_user/src/common/layout/default_layout.dart';
import 'package:apps_user/src/features/login/email/widgets/custom_text_form_field.dart';
import 'package:apps_user/src/features/login/email/widgets/custom_text_form_field_eye.dart';
import 'package:apps_user/src/features/login/email/widgets/header_back.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../common/custom_text_yorijori.dart';


class LoginEmailScreen extends StatelessWidget {
  const LoginEmailScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          top: true,
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const HeaderBack(),
                // 요리조리 글자
                const TitleYorijori(),
                const SizedBox(height: 30.0),
                // 이메일 주소 박스
                CustomTextFormField(
                  hintText: '이메일 주소 입력',
                  onChanged: (String value) {},
                ),
                const SizedBox(height: 12.0),
                // 비밀번호 입력 박스
                CustomTextFormFieldEye(
                  hintText: '비밀번호 입력',
                  onChanged: (String value) {},
                  obscureText: true,
                ),
                //const SizedBox(height: 12.0),
                //아이디 저장
                const RowIdSave(),
                const SizedBox(height: 30.0),
                // 로그인 버튼
                const loginImgButton(),
                const SizedBox(height: 10.0),
                // footer text
                const FooterText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class RowIdSave extends StatelessWidget {
  const RowIdSave({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        IdSaveCheckBox(),
        Text(
          '아이디 저장',
          style: TextStyle(
            fontFamily: 'Noto Sans KR',
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}



class IdSaveCheckBox extends StatefulWidget {
  const IdSaveCheckBox({super.key});

  @override
  State<IdSaveCheckBox> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<IdSaveCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Colors.white,
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}


class loginImgButton extends StatelessWidget {
  const loginImgButton({super.key});

  @override
  Widget build(BuildContext context) {

    // final dio = Dio();
    //
    // final emulatorIp = '10.0.2.2:3000';
    // final simulatorIP = '127.0.0.1:3000';
    //
    // final ip = Platform.isIOS? simulatorIP : emulatorIp;

    return InkWell(
      onTap: () async {

        print('btn_emaillogin_off');

        var params =  {
          'idEmail' : 'johndoe@gmail.com',
          'pwd' : 'qwer!@1234',
        };

        Dio dio = Dio();
        try {
          Response response = await dio.post(
              'http://localhost:9091/api/user/v1/sign/in',
              options: Options(
                headers: {
                  HttpHeaders.contentTypeHeader: "application/json",
                }
              ),
            data: jsonEncode(params),

          );
          print(response.statusCode);
          if (response.statusCode == 200) {
            print(response.data);
          } else {
            print('not 200 실패');
          }

        } catch (e) {
          print(e);
          //Exception(e);
        } finally {
          dio.close();
        }
        //return false;

        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginSocialScreen()));
      },
      child: Image.asset(
        'assets/img/login/btn_emaillogin_off.png',
      ),
    );
  }
}

// 아이디 찾기, 비밀번호 찾기, 회원가입
class FooterText extends StatelessWidget {
  const FooterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () {
            print('아이디 찾기');
          },
          child: const Text(
            '아이디 찾기',
            style: TextStyle(
              fontSize: 13.0,
              color: AppColors.ff787878,
            ),
          ),
        ),
        const Text(
          '|',
          style: TextStyle(
            fontSize: 13.0,
            color: AppColors.ff787878,
          ),
        ),
        InkWell(
          onTap: () {
            print('비밀번호 찾기');
          },
          child: const Text(
            '비밀번호 찾기',
            style: TextStyle(
              fontSize: 13.0,
              color: AppColors.ff787878,
            ),
          ),
        ),
        const Text(
          '|',
          style: TextStyle(
            fontSize: 13.0,
            color: AppColors.ff787878,
          ),
        ),
        InkWell(
          onTap: () {
            print('회원가입');
          },
          child: const Text(
            '회원가입',
            style: TextStyle(
              fontSize: 13.0,
              color: AppColors.ff787878,
            ),
          ),
        ),
      ],
    );
  }
}
