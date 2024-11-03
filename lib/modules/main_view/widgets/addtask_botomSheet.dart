import 'package:flutter/material.dart';

class AddtaskBotomsheet extends StatefulWidget {
  const AddtaskBotomsheet({super.key});

  @override
  State<AddtaskBotomsheet> createState() => _AddtaskBotomsheetState();
}

class _AddtaskBotomsheetState extends State<AddtaskBotomsheet> {
  DateTime selectday = DateTime.now();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var media = MediaQuery.of(context);
    return Container(
      margin: const EdgeInsets.all(10),
      width: media.size.width,
      child: Form(
        key: formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
                textAlign: TextAlign.center,
                'Add Task',
                style: theme.textTheme.titleMedium),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              onChanged: (text) {},
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return 'Please enter tittle Task';
                }
                return null;
              },
              cursorColor: theme.primaryColor,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(width: 2, color: theme.primaryColor)),
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(width: 2, color: theme.primaryColor)),
                hintText: 'enter Task tittle ',
                hintStyle: theme.textTheme.bodySmall,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return 'Please enter Description Task ';
                }
                return null;
              },
              maxLines: 3,
              cursorColor: theme.primaryColor,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(width: 2, color: theme.primaryColor)),
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(width: 2, color: theme.primaryColor)),
                hintText: 'enter Task Description',
                hintStyle: theme.textTheme.bodySmall,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Select Date:',
              style: theme.textTheme.bodyMedium,
            ),
            TextButton(
              onPressed: () {
                showCalendar();
              },
              child: Text(
                textAlign: TextAlign.center,
                '${selectday.day}/${selectday.month}/${selectday.year}',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.primaryColor,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  addTask();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(10),
                  backgroundColor: theme.primaryColor,
                ),
                child: Text(
                  'Add',
                  style: theme.textTheme.displayMedium,
                ))
          ],
        ),
      ),
    );
  }

  void showCalendar() async {
    var chosenDate = await showDatePicker(
        context: context,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 365)));
    selectday = chosenDate ?? selectday;
    setState(() {});
  }

  void addTask() {
    if (formkey.currentState!.validate()) {
      return;
    }
  }
}
