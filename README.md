# nolajyo_project_front Documentation
# 프로젝트 설명

비슷하거나 같은 취미 생활을 가진 사람들과 모임을 생성하여 취미활동을 공유하는 앱 프로젝트입니다.

### 사용중인 상태관리, 디자인 패턴

Getx 상태관리 패키지를 사용하며 mvvm 디자인 패턴을 채택하여 프로젝트를 구성 할 계획입니다.

# 프로젝트 구성 안내

- Flutter version 3.3.1
- Dart version 2.18.0
- DevTools version 2.15.0
- Android SDK version 32.0.0

`flutter doctor -v` 로 현재 사용중인 프로젝트의 개발환경 확인이 가능합니다.

## 프로젝트 사용법

[https://github.com/Nolajyo-Team-Project/nolajyo_project_front](https://github.com/Nolajyo-Team-Project/nolajyo_project_front)

해당 프로젝트 clone 후,

`flutter pub get`로 플러그인들을 사용할 수 있게 프로젝트로 가져와서 사용 하시면 됩니다.

## 빌드 방법

### apk 추출

- `flutter build apk` 를 통해 apk를 추출 할 수 있습니다.
- 추출 후 `build/app/outputs/apk/release` 에서 추출된 apk 확인이 가능합니다.

### App Bundle 추출

- `flutter build appbundle` 를 통해 appbundle를 추출 할 수 있습니다.
- 추출 후 `build/app/outputs/bundle/release` 에서 추출된 appbundle 확인이 가능합니다.

# C**ode Convention**

Flutter에서는 코딩에 대한 구체적인 표준이나 규범을 정의하지 않고 있습니다. 하지만 Flutter는 Dart 언어를 사용하기에 되도록이면 [Dart의 Coding Standard](https://dart.dev/guides/language/effective-dart/style)를 준수하여 작성하려고 합니다.

플러터 린트가 적용되어 있어 주로 자주 사용 하거나 주의해야할 부분만 추려 간단하게 정리했습니다. 자세한 내용은 [https://dart.dev/guides/language/effective-dart/style](https://dart.dev/guides/language/effective-dart/style) 해당 페이지에서 확인 가능합니다.

## **식별자 (Identifiers)**

Dart에서는 UppderCamelCase, lowerCamelCase, lowercase_with_underscores 네이밍 규칙을 사용합니다.

| UppderCamelCase (PascalCase) | 모든 단어에서 첫 단어를 대문자로 시작하는 표기법입니다. 주로 클래스 이름에 사용합니다. |
| --- | --- |
| lowerCamelCase (camelCase) | 소문자로 시작하며, 각 단어의 시작 문자를 대문자로 합니다. 주로 함수나 변수에 사용합니다. |
| lowercase_with_underscores (snake case) |  소문자만 사용하며 단어의 구분은 언더스코어(_)를 사용합니다. 대문자나 다른 구분자는 사용하지 않습니다. 주로 폴더명과 파일명에 사용합니다. |
1. ****Type의 경우 UpperCamelCase를 사용합니다.**

Class, Enum, Typedef, Type 매개변수는 UpperCamelCase를 사용합니다.

```dart
class SliderMenu { ... }
class HttpRequest { ... }
typedef Predicate<T> = bool Function(T value);

...

class Foo {
  const Foo([arg]);
}
```

1. ****소스파일, 디렉터리, 라이브러리, 패키지는 lowercase_with_underscores를 사용합니다.**

```dart
library peg_parser.source_scanner;

import 'package:flutter/material.dart';
import 'file_system.dart';
import 'slider_menu.dart';
```

1. ****상수에는 lowerCamelCase 사용합니다.**

enum 값을 포함하여 상수에는 lowerCamelCase를 사용해주세요.

```dart
//Good
const pi = 3.14;
const defaultTimeout = 1000;
final urlScheme = RegExp('^([a-z]+):');
 
class Dice {
  static final numberGenerator = Random();
}

//Bad
const PI = 3.14;
const DefaultTimeout = 1000;
final URL_SCHEME = RegExp('^([a-z]+):');
 
class Dice {
  static final NUMBER_GENERATOR = Random();
}
```

📌 그외 여러가지 있지만, 사실 제일 중요한 두가지만 지키면 좋을 것 같습니다!

- **일관성을 최대한 유지**
- **가독성을 높이며 최대한 간단하게**

# **File Structure**

📌 여기서도 **신경써야 할 부분을 두가지만 지키면 좋을 것 같습니다.**

1. **명명법(Naming Convention)**
2. **관심사의 분리(separation of concerns, SoC) - File Structure**

### 1) Naming Convention

- 폴더명과 파일명은 snake_case를 쓸 것
- 클래스명은 PascalCase를 쓸 것
- 변수명, 함수명은 camelCase를 쓸 것
- 클래스를 하나의 파일로 정리한다면 파일명과 클래스명은 동일하게 작성할 것ex) 파일명: login_screen.dart , 클래스명: LoginScreen
- 폴더명과 내부 파일의 역할이 정확한 분류라면 파일의 이름에 폴더명을 추가할 것(굳이 적지 않아도 명확히 특정 폴더 소속임이 명확하다면 파일 이름에 폴더명을 생략해도 좋다.)ex) 폴더명: screens, 파일명: login_screen.dart
- 폴더명은 복수형으로, 파일명은 단수형으로 작성할 것ex) 폴더명: screens, 파일명: login_screen.dart

### 2) **File Structure**

해당 디렉토리 구조는 MVVM 패턴의 사용되는 여러 구조의 자료를 찾아 적용했습니다.

참고자료 : [***https://code.pieces.app/blog/using-mvvm-in-flutter***](https://code.pieces.app/blog/using-mvvm-in-flutter)

[***https://blog.devgenius.io/flutter-mvvm-architecture-with-provider-a81164ef6da6***](https://blog.devgenius.io/flutter-mvvm-architecture-with-provider-a81164ef6da6) [](https://www.notion.so/SangGaTalk-Documentation-7cfd9e5901084d03a84a98500688c11b)

***[https://medium.com/@ermarajhussain/flutter-mvvm-architecture-best-practice-using-provide-http-4939bdaae171](https://medium.com/@ermarajhussain/flutter-mvvm-architecture-best-practice-using-provide-http-4939bdaae171)***

<img width="371" alt="스크린샷 2022-09-09 오전 3 02 10" src="https://user-images.githubusercontent.com/73716178/189203272-5570ca1a-1be0-43c1-a740-e8c0c04e98c0.png">

⚠️ **어디까지나 참고로 추가한 프로젝트이며, 작업중 불필요하다거나, 추가로 넣어야 할 파일이 있다면 말씀 부탁드립니다! 🙏**

- assets : fonts, images, logo 등의 세부 폴더들이 위치할 수 있으며, 앱에서 사용할 **design asset**들을 모아두는 폴더입니다.
- data : 이 디렉토리는 **모든 네트워크 및 로컬 DB 관련 클래스**를 보유합니다.
  - local_datasource: 로컬에 저장된 정보를 가져오는 모든 함수들이 구현되어 있다.
  - remote_datasource : API서버와 통신에 필요한 모든 함수들이 구현되어 있다.
- models **:** API 응답에 대한 모든 **모델 클래스**를 보유하고 클린 아키텍처를 위해 각 API 응답 모델 클래스에 대한 내부 디렉토리를 생성합니다.
- repository : **ViewModel에서 관련된 정보**가 필요할때 이곳을 통해서 가져가게 된다.
- res **: 색상, 스타일 및 문자 파일과 관련된 모든 클래스**를 보유합니다.
  - components : 공통으로 사용되는 위젯 클래스를 모아둔 디렉토리입니다.
  - constant : 공통으로 사용하게 될 상수를 모아둔 파일입니다.


    ```dart
    final String APP_VERSION = "1.0.11";
    
    const kPrimaryColor = Color(0xFFF8B616);
    const kBlackColor = Color(0xFF000000); 
    
    final kRegular14PrimaryStyle = TextStyle(
      fontFamily: Font,
      fontSize: 10.sp,
      color: kPrimaryColor,
    );
    ...
    ```

- utils **: 프로젝트의 모든 유틸리티 클래스**를 보유합니다. 예를 들면 여러곳에서 공통으로 사용되는 function이나 logic을 모아두는 폴더라고 이해하시면 편할것 같습니다.

    ```dart
    //시간을 입력 받고 사용자에게 친숙한 시간 데이터(텍스트)를 출력하는 함수
    String reviewDisplayedAt(DateTime time) {
      var milliSeconds = DateTime.now().difference(time).inMilliseconds;
      var seconds = milliSeconds / 1000;
      if (seconds < 60) return '방금 전'.tr;
      var minutes = seconds / 60;
      if (minutes < 60) return '분 전'.trParams({"time": "${minutes.floor()}"});
      var hours = minutes / 60;
      if (hours < 24) return '시간 전'.trParams({"time": "${hours.floor()}"});
      var days = hours / 24;
      if (days < 7) return '일 전'.trParams({"time": "${days.floor()}"});
      return '${DateFormat('yyyy-MM-dd HH:mm').format(time)}';
    }
    ```

  - routes : 앱 화면 간 이동을 구현할 때 사용한다.
- view : 유저에게 **UI를 직접 보여주는 곳**으로, View 클래스 하나로 이루어져 있습니다.
- view_model : View 단위의 **비지니스 로직을 처리**하고 View상태를 유지/관리하는 곳으로 ViewModel클래스 하나로 이루어 집니다.

# 사용중인 패키지

프로젝트를 구성할때 필요한 패키지 입니다.

패키지가 추가 되거나, 변경이 되면 상시 수정 예정입니다.

| 패키지 | 버전 | 사용 목적(이유) | 링크 |
| --- | --- | --- | --- |
| dio | ^4.0.6  | api통신을 할 때 사용하면 편리한 라이브러리인 dio  | https://pub.dev/packages/dio |
| get | ^4.6.5 | 상태관리 라이브러리 | https://pub.dev/packages/get |
| permission_handler | ^10.0.0 | 간단하게 사용 할 수 있는 권한 요청 라이브러리 | https://pub.dev/packages/permission_handler |
| intl | ^0.17.0 | date, time, number format 등 여러가지 편의성 기능 제공 | https://pub.dev/packages/intl |
| flutter_dotenv | ^5.0.2 | 환경변수 파일을 만들어 URL,포트넘버, API_KEY등을 저장시켜 소스코드 내에 하드코딩하지 않고 사용하기 위해 사용 | https://pub.dev/packages/flutter_dotenv |
| flutter_screenutl | ^5.5.4 | 디자인 사이즈과 플러터의 스크린 사이즈 간의 차이를 줄이기 위해 사용 | https://pub.dev/packages/flutter_screenutil