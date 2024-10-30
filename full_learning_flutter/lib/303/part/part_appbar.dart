part of './part_of_learn.dart';

class _PartofAppBar extends StatelessWidget implements PreferredSizeWidget{
  const _PartofAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Title'),
      actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.abc))],
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}