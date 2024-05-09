import 'package:apps_user/src/common/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldEye extends StatelessWidget {

  final String? hintText;
  final String? errorText;
  final bool obscureText;
  final bool autoFocus;
  final ValueChanged<String>? onChanged;

  const CustomTextFormFieldEye({
    required this.onChanged,
    this.hintText,
    this.errorText,
    this.obscureText = false,
    this.autoFocus = false,
    super.key,
  }) ;

  @override
  Widget build(BuildContext context) {

    final baseBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.ffF3F2F2,
        width: 1.0,
      ),
    );

    return TextFormField(
      cursorColor: AppColors.ff22A45D,
      obscureText: obscureText,
      autofocus: autoFocus,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),
        hintText: hintText,
        errorText: errorText,
        hintStyle: const TextStyle(
          color: AppColors.ff868686,
          fontSize: 14.0,
        ),
        fillColor: AppColors.ffFBFBFB,
        filled: true,
        border: baseBorder,
        enabledBorder: baseBorder,
        focusedBorder: baseBorder.copyWith(
          borderSide: baseBorder.borderSide.copyWith(
            color: AppColors.ff22A45D,
          ),
        ),
        suffixIcon: InkWell(
          onTap: () {
            print('remove_red_eye');
            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginSocialScreen()));
          },
          child: const Align(
            widthFactor: 1.0,
            heightFactor: 1.0,
            child: Icon(
              Icons.remove_red_eye_outlined,
            ),
          ),
        ),
      ),
    );
  }
}
