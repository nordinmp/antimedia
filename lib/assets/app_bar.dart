part of asset_library;

class HeaderBar extends StatelessWidget implements PreferredSizeWidget{
  const HeaderBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar.medium(
          backgroundColor: Theme.of(context).colorScheme.background,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search)
          ),
          title: const Text('Home'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings_outlined))
          ],
        ),
      ],
    );
  }
}