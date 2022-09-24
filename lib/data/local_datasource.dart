import 'package:nolajyo_project/models/concern_model.dart';
import 'package:nolajyo_project/models/home_meeting_model.dart';

const List<String> regionList = [
  '서울특별시',
  '부산광역시',
  '대구광역시',
  '인천광역시',
  '광주광역시',
  '대전광역시',
  '울산광역시',
  '세종특별자치시',
  '경기도',
  '강원도',
  '충청북도',
  '충청남도',
  '전라북도',
  '전라남도',
  '경상북도',
  '경상남도',
  '제주특별자치도',
];

List<ConcernModel> concernList = [
  const ConcernModel(name: "제태크", image: 'assets/img/concern_icons/concern_icon_1.png'),
  const ConcernModel(name: "운동", image: "assets/img/concern_icons/concern_icon_2.png"),
  const ConcernModel(name: "반려동물", image: "assets/img/concern_icons/concern_icon_3.png"),
  const ConcernModel(name: "스터디", image: "assets/img/concern_icons/concern_icon_4.png"),
  const ConcernModel(name: "육아", image: "assets/img/concern_icons/concern_icon_5.png"),
  const ConcernModel(name: "창작", image: "assets/img/concern_icons/concern_icon_6.png"),
  const ConcernModel(name: "독서", image: "assets/img/concern_icons/concern_icon_7.png"),
  const ConcernModel(name: "문화생활", image: "assets/img/concern_icons/concern_icon_8.png"),
];

List<ConcernModel> homeConcernList = [
  const ConcernModel(name: "제태크", image: 'assets/img/home_assets/con_icon_1.png'),
  const ConcernModel(name: "운동", image: "assets/img/home_assets/con_icon_2.png"),
  const ConcernModel(name: "반려동물", image: "assets/img/home_assets/con_icon_3.png"),
  const ConcernModel(name: "스터디", image: "assets/img/home_assets/con_icon_4.png"),
  const ConcernModel(name: "육아", image: "assets/img/home_assets/con_icon_5.png"),
  const ConcernModel(name: "창작", image: "assets/img/home_assets/con_icon_6.png"),
  const ConcernModel(name: "독서", image: "assets/img/home_assets/con_icon_7.png"),
  const ConcernModel(name: "문화생활", image: "assets/img/home_assets/con_icon_8.png"),
];

List<MeetingModel> homeMeetingList = [
  const MeetingModel(title: '제목 어쩌고 저쩌고', region: '강남구', image: 'assets/img/home_assets/Room.png', people: 10),
  const MeetingModel(title: '제목 어쩌고 저쩌고 2', region: '서초구', image: 'assets/img/home_assets/Room.png', people: 10),
  const MeetingModel(title: '제목 어쩌고 저쩌고 3', region: '마포구', image: 'assets/img/home_assets/Room.png', people: 10),
  const MeetingModel(title: '제목 어쩌고 저쩌고 4', region: '은평구', image: 'assets/img/home_assets/Room.png', people: 10),
  const MeetingModel(title: '제목 어쩌고 저쩌고 5', region: '구구', image: 'assets/img/home_assets/Room.png', people: 10),
  const MeetingModel(title: '제목 어쩌고 저쩌고 6', region: '비둘기야 밥먹자', image: 'assets/img/home_assets/Room.png', people: 10),
];
