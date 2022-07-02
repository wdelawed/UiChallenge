import 'package:flutter/widgets.dart';
import 'package:unicode_task/main_module/representation/components/coach_question_widget.dart';

class QuestionsTabWidget extends StatelessWidget {
  const QuestionsTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      height: 316,
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) => const CoachQuestionWidget(),
      ),
    );
  }
}
