import 'package:flutter/material.dart';

class PlatformMenuBarWidget extends StatelessWidget {
  const PlatformMenuBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformMenuBar(
      menus: [
        PlatformMenu(
          label: "Platform Menu",
          menus: [
            PlatformMenuItemGroup(
              members: [
                PlatformMenuItem(
                  label: "About",
                  onSelected: () {},
                ),
                PlatformMenuItem(
                  label: "Setting",
                  onSelected: () {},
                ),
                PlatformMenu(label: "Services", menus: [
                  PlatformMenuItem(
                    label: "Services aa",
                    onSelected: () {},
                    shortcut: CharacterActivator("A"),
                  ),
                  PlatformMenuItem(
                    label: "Services bb",
                    onSelected: () {},
                    shortcut: CharacterActivator("B"),
                  ),
                  PlatformMenuItem(
                    label: "Services cc",
                    onSelected: () {},
                    shortcut: CharacterActivator("C"),
                  ),
                ]),
              ],
            ),
            PlatformMenuItemGroup(
              members: [
                PlatformMenu(
                  label: "Messages",
                  menus: [
                    PlatformMenuItem(
                      label: "Learn more",
                      onSelected: () {},
                      shortcut: CharacterActivator("F"),
                    ),
                  ],
                )
              ],
            ),
            if (PlatformProvidedMenuItem.hasMenu(PlatformProvidedMenuItemType.quit))
              const PlatformProvidedMenuItem(type: PlatformProvidedMenuItemType.quit)
          ],
        ),
      ],
    );
  }
}
