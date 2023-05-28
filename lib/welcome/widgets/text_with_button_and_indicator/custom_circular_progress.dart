part of 'text_with_button_and_indicator.dart';

class _CustomCircularProgress extends StatelessWidget {
  const _CustomCircularProgress({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 70,
      child: TweenAnimationBuilder<double>(
        tween: getProgressOnCurrentIndex(currentIndex),
        duration: AppAnimations.circularProgressIndicator,
        builder: (_, value, __) => CircularProgressIndicator(
          backgroundColor: AppColors.circularProgressIndicatorBackground,
          value: value,
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation(
            getColorFromIndex(currentIndex),
          ),
        ),
      ),
    );
  }
}
