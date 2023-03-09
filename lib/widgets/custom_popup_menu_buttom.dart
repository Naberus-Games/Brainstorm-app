import 'package:flutter/material.dart';
import 'package:brainstorm/main.dart';
import 'package:brainstorm/theme.dart';

class ProfilePopupMenuButton extends StatelessWidget {
  const ProfilePopupMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      icon: Icon(
        Icons.account_circle,
        color: const BrainstormTheme().primaryColor,
        size: 40,
      ),
      color: context.isDarkMode
          ? const BrainstormTheme().darkAccentColor
          : const BrainstormTheme().lightAccentColor,
      onSelected: (value) {
        switch (value) {
          case 1:
            Navigator.pushNamed(context, '/Profile-Screen');
            break;
          case 2:
            Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            break;
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: ListTile(
            leading: Icon(
              Icons.person,
              color: const BrainstormTheme().primaryColor,
            ),
            title: Text(
              'Profile',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.red,
            ),
            title: Text(
              'Logout',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.red),
            ),
          ),
        ),
      ],
      tooltip: 'Profile',
    );
  }
}

class NewFilePopupMenuButton extends StatelessWidget {
  const NewFilePopupMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      offset: Offset.fromDirection(0, 100),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      icon: const Icon(
        Icons.add,
        color: Colors.white,
      ),
      color: context.isDarkMode
          ? const BrainstormTheme().darkAccentColor
          : const BrainstormTheme().lightAccentColor,
      onSelected: (value) {
        switch (value) {
          case 1:
            Navigator.pushNamed(context, '/Whiteboard-Work-Screen');
            break;
          case 2:
            Navigator.pushNamed(context, '/Notes-Work-Screen');
            break;
          case 3:
            Navigator.pushNamed(context, '/To-Do-Work-Screen');
            break;
          case 4:
            Navigator.pushNamed(context, '/');
            break;
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: ListTile(
            leading: Icon(
              Icons.crop_original,
              color: const BrainstormTheme().primaryColor,
            ),
            title: Text('Whiteboard',
                style: Theme.of(context).textTheme.bodyMedium),
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: ListTile(
            leading: Icon(
              Icons.notes,
              color: const BrainstormTheme().primaryColor,
            ),
            title: Text('Notes', style: Theme.of(context).textTheme.bodyMedium),
          ),
        ),
        PopupMenuItem(
          value: 3,
          child: ListTile(
            leading: Icon(
              Icons.check_box,
              color: const BrainstormTheme().primaryColor,
            ),
            title: Text(
              'To Do',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
        PopupMenuItem(
          value: 4,
          child: ListTile(
            leading: Icon(
              Icons.edit_document,
              color: const BrainstormTheme().primaryColor,
            ),
            title:
                Text('Scripts', style: Theme.of(context).textTheme.bodyMedium),
          ),
        ),
      ],
      tooltip: 'New',
    );
  }
}
