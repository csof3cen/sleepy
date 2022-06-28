import 'package:flutter/material.dart';
import 'package:sleepy/shared/components/scaffoldconfig.dart';
import 'package:sprintf/sprintf.dart';

class SelectTimeScreen extends StatefulWidget {
  const SelectTimeScreen({Key? key}) : super(key: key);

  @override
  State<SelectTimeScreen> createState() => _SelectTimeScreenState();
}

class _SelectTimeScreenState extends State<SelectTimeScreen> {
  TimeOfDay selectedSleepTime = const TimeOfDay(hour: 22, minute: 00);
  TimeOfDay selectedGetupTime = const TimeOfDay(hour: 06, minute: 00);

  selectSleepTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedSleepTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedSleepTime) {
      setState(() {
        selectedSleepTime = timeOfDay;
      });
    }
  }

  selectGetupTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedGetupTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedGetupTime) {
      setState(() {
        selectedGetupTime = timeOfDay;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldConfig(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Text('Se coucher : '),
                Hero(
                  tag: "sleeptime",
                  child: Text(
                    sprintf(
                      "%02i:%02i",
                      [selectedSleepTime.hour, selectedSleepTime.minute],
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                selectSleepTime(context);
              },
              child: const Text("Changer"),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Text('Se Lever : '),
                Hero(
                  tag: "uptime",
                  child: Text(
                    sprintf(
                      "%02i:%02i",
                      [selectedGetupTime.hour, selectedGetupTime.minute],
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                selectGetupTime(context);
              },
              child: const Text("Changer"),
            ),
          ],
        )
      ],
    );
  }
}
