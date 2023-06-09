import 'dart:ui';

/// 프로젝트 데이터를 저장하기 위한 class
class ProjectModel {
  /// 아래는 전부 ProjectModel의 속성
  /// 프로젝트명(이름)
  final String projectName; // 문자열

  /// 진행한 할일 갯수
  final int finishedTodoNumber; // 정수

  /// 전체 할일 갯수
  final int totalTodoNumber; // 정수

  /// marker 배경색
  final Color markerBackgroundColor; // UI 표시를 위한 Color
  /// marker 텍스트 색
  final Color markerTextColor; // UI 표시를 위한 Color
  /// marker에 넣을 텍스트(색상명)
  final String markerColorName; // 문자열

  /// 생성자
  const ProjectModel({
    required this.projectName,
    required this.finishedTodoNumber,
    required this.totalTodoNumber,
    required this.markerBackgroundColor,
    required this.markerTextColor,
    required this.markerColorName,
  });
}