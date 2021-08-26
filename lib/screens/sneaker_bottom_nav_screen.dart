part of '../main.dart';

class SneakerBottomNavScreen extends StatefulWidget {
  const SneakerBottomNavScreen({Key? key}) : super(key: key);

  @override
  _SneakerBottomNavScreenState createState() => _SneakerBottomNavScreenState();
}

class _SneakerBottomNavScreenState extends State<SneakerBottomNavScreen> {
  late PageController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          SneakerHomeScreen(),
          Center(child: Text('Search')),
          Center(child: Text('Profile')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (v) {
          setState(() {
            _selectedIndex = v;
            _controller.animateToPage(
              v,
              duration: Duration(milliseconds: 2),
              curve: Curves.ease,
            );
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: _theme.primaryColor,

        items: [
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.user),
            label: '',
          ),
        ],
      ),
    );
  }
}
