import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  final String comment;
  final int score;
  final int total;

  const ResultWidget(
      {super.key,
      required this.comment,
      required this.score,
      required this.total});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card.outlined(
          elevation: 30,
          child: Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      comment,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "You've scored ${score / total * 100.round()}% points",
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                  ),
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: SizedBox(
                            height: double.maxFinite,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.track_changes_outlined,
                                      color: Color.fromARGB(255, 10, 45, 62),
                                    ),
                                    Text('$total ',
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600))
                                  ],
                                ),
                                const Text("Total Que")
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: SizedBox(
                            height: double.maxFinite,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.done,
                                      color: Colors.greenAccent,
                                    ),
                                    Text('$score',
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600))
                                  ],
                                ),
                                const Text("Correct")
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: SizedBox(
                            height: double.maxFinite,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.close_sharp,
                                      color: Colors.redAccent,
                                    ),
                                    Text('${total - score}',
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600))
                                  ],
                                ),
                                const Text("Wrong")
                              ],
                            ),
                          )),
                    ],
                  )),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
