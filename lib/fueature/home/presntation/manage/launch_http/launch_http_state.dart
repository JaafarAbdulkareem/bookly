abstract class LaunchHttpState {}

final class LaunchHttpInitial extends LaunchHttpState {}

final class LaunchHttpLoading extends LaunchHttpState {}

final class LaunchHttpSuccess extends LaunchHttpState {}

final class LaunchHttpFailure extends LaunchHttpState {
  final String errorMessage;
  LaunchHttpFailure({required this.errorMessage});
}
