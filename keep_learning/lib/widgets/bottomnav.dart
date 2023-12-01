import 'package:flutter/material.dart';
import 'package:keep_learning/widgets/alert_dialog.dart';
import 'package:keep_learning/widgets/dismissible.dart';
import 'package:keep_learning/widgets/rowscols.dart';
import 'package:keep_learning/widgets/snackbar.dart';




class BottomNavWidget extends StatefulWidget {
  const BottomNavWidget({super.key});

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {


  int selectedindex = 0;

  PageController pageController = PageController();

  // List<Widget> widgets = [
  //   Text('Home'),
  //   Text('Share'),
  //   Text('Add'),
  //   Text('Setting'),
  // ];


  void onItemTapped(int index){
  setState(() {
    selectedindex = index;
  });
  pageController.jumpToPage(index);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Bottom Nav'),
      //   backgroundColor: Colors.green,
      // ),
      body: PageView(
        controller: pageController ,
        children: const [
          AlertWidget(),
          DismissibleWidget(),
          RowlCols(),
          SanckBarWidget(),
        ],
      ),
      
      //Center(child: widgets.elementAt(selectedindex)),
      bottomNavigationBar:
        BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Home' ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,),
            label: 'Search' ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add,),
            label: 'Add' ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_input_antenna,),
            label: 'Setting' ),
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey ,
        onTap: onItemTapped,
      )
    );
  }
}