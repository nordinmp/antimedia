part of asset_library;

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final int _currentIndex = 0;

  void _onDestinationSelected(int index) {
    if (_currentIndex != index) {
      String routeName = RouteGenerator.generateRouteName(index);
      Navigator.pushNamed(context, routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPage(),
      bottomNavigationBar: _buildNavigationBar(),
    );
  }

  Widget _buildPage() {
    // You can leave this method empty as it will be replaced with named routes
    return Container();
  }

  BottomNavigationBar _buildNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onDestinationSelected,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_outlined),
          label: 'Calendar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
      selectedItemColor: Theme.of(context).primaryColor, // Use the primary color from the theme
      unselectedItemColor: Colors.grey, // Customize the unselected item color
    );
  }
}

