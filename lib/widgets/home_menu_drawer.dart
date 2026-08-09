import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';
import '../theme/clario_colors.dart';

class HomeMenuDrawer extends StatelessWidget {
  const HomeMenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      backgroundColor: ClarioColors.background(context),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                "MENU",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: ClarioColors.text(context),
                ),
              ),

              const SizedBox(height: 30),

              _menuItem(
                context,
                Icons.school_outlined,
                "Change Institution",
                    () {},
              ),

              const Divider(height: 30),

              _menuItem(
                context,
                Icons.settings_outlined,
                "Settings",
                    () {},
              ),

              const Divider(height: 30),

              Consumer<ThemeProvider>(
                builder: (context, themeProvider, child) {
                  return _menuItem(
                    context,
                    themeProvider.darkMode
                        ? Icons.light_mode_outlined
                        : Icons.dark_mode_outlined,
                    themeProvider.darkMode
                        ? "Light Mode"
                        : "Dark Mode",
                        () {
                      themeProvider.toggleTheme();
                    },
                  );
                },
              ),

              const Divider(height: 30),

              _menuItem(
                context,
                Icons.info_outline,
                "About Clario",
                    () {},
              ),

              const Spacer(),

              _menuItem(
                context,
                Icons.logout,
                "Log Out",
                    () {},
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _menuItem(
      BuildContext context,
      IconData icon,
      String title,
      VoidCallback onTap,
      ) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [

            Icon(
              icon,
              color: ClarioColors.blue,
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: ClarioColors.text(context),
                ),
              ),
            ),

            Icon(
              Icons.chevron_right,
              color: ClarioColors.text(context),
            ),

          ],
        ),
      ),
    );
  }
}