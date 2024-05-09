import 'package:flutter/material.dart';

// AppBar가 공통적이고 중간에 Body가 들어가는 부분이 화면마다 공통이라면
// BaseScaffold를 만들어서 사용하는 것이 효율적

// BaseScaffold는 플러터(Flutter)에서 기본적으로 제공되는 위젯이 아니라 개발자가 직접 만든 커스텀 위젯
// 이것은 앱의 여러 화면에서 공통된 기능이나 레이아웃을 추상화하여 재사용 가능한 커스텀 위젯을 만들기 위해 사용