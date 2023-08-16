part of asset_library;

class HeaderBar extends StatelessWidget implements PreferredSizeWidget{
  const HeaderBar({super.key,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).colorScheme.background,
            leading: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Handle menu button press
              },
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  // Handle search button press
                },
              ),
              IconButton(
                icon: Icon(Icons.settings_outlined),
                onPressed: () {
                  // Handle notifications button press
                },
              ),
            ],
          ),
          // Add other slivers as needed
        ],
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}