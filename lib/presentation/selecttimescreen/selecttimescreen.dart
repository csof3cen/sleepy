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
      index: 9,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          tooltip: 'Retour',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Se coucher à ',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  sprintf(
                    "%02i:%02i",
                    [selectedSleepTime.hour, selectedSleepTime.minute],
                  ),
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                selectSleepTime(context);
              },
              child: const Text(
                "Changer",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Se Lever à ',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  sprintf(
                    "%02i:%02i",
                    [selectedGetupTime.hour, selectedGetupTime.minute],
                  ),
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                selectGetupTime(context);
              },
              child: const Text(
                "Changer",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
