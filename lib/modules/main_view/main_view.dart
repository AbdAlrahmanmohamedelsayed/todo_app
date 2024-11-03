import 'package:flutter/material.dart';
import 'package:todo_app/modules/main_view/widgets/addtask_botomSheet.dart';
import 'package:todo_app/modules/screens/home/home_view.dart';
import 'package:todo_app/modules/screens/settings/settings_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [HomeView(), SettingsView()];

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showAddTaskBottomSheet();
          },
          child: const Icon(
            color: Colors.white,
            Icons.add,
            size: 40,
          )),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        height: 90,
        color: Colors.white,
        notchMargin: 15,
        child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(width: 32, 'assets/images/task-list.png'),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Image.asset(width: 32, 'assets/images/management.png'),
                  label: 'settings')
            ]),
      ),
      body: screens[selectedIndex],
      extendBody: true,
    );
  }

  void showAddTaskBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => AddtaskBotomsheet(),
    );
  }
}
