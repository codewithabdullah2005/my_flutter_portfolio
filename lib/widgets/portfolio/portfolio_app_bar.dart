import 'dart:ui';

import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class PortfolioNavigation {
  static final GlobalKey homeKey = GlobalKey();
  static final GlobalKey aboutKey = GlobalKey();
  static final GlobalKey skillsKey = GlobalKey();
  static final GlobalKey projectsKey = GlobalKey();
  static final GlobalKey educationKey = GlobalKey();
  static final GlobalKey contactKey = GlobalKey();

  static void goTo(GlobalKey key) {
    final context = key.currentContext;

    if (context == null) return;

    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOut,
      alignment: 0.05,
    );
  }
}

// ================================================================
// PORTFOLIO APP BAR
// ================================================================

class PortfolioAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const PortfolioAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final isMobile = width < 700;

    return AppBar(
      automaticallyImplyLeading: false,

      // Transparent AppBar
      backgroundColor: Colors.transparent,

      elevation: 0,
      scrolledUnderElevation: 0,

      titleSpacing: 20,

      // ==========================================================
      // LOGO
      // ==========================================================

      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Logo icon
          Container(
            width: 38,
            height: 38,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),

              color: AppTheme.blue.withValues(
                alpha: 0.10,
              ),

              border: Border.all(
                color: AppTheme.blue.withValues(
                  alpha: 0.30,
                ),
              ),

              boxShadow: [
                BoxShadow(
                  color: AppTheme.blue.withValues(
                    alpha: 0.12,
                  ),
                  blurRadius: 15,
                ),
              ],
            ),

            child: const Icon(
              Icons.code_rounded,
              color: AppTheme.blue,
              size: 20,
            ),
          ),

          const SizedBox(width: 12),

          const Text(
            'Abdullah Tech',

            style: TextStyle(
              color: AppTheme.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
              letterSpacing: -0.3,
            ),
          ),
        ],
      ),

      // ==========================================================
      // ACTIONS
      // ==========================================================

      actions: isMobile
          ? [
        Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(
                right: 15,
              ),

              child: _glassMenuButton(
                context,
              ),
            );
          },
        ),
      ]
          : [
        _navItem(
          'Home',
          PortfolioNavigation.homeKey,
        ),

        _navItem(
          'About',
          PortfolioNavigation.aboutKey,
        ),

        _navItem(
          'Skills',
          PortfolioNavigation.skillsKey,
        ),

        _navItem(
          'Projects',
          PortfolioNavigation.projectsKey,
        ),

        _navItem(
          'Education',
          PortfolioNavigation.educationKey,
        ),

        _navItem(
          'Contact',
          PortfolioNavigation.contactKey,
        ),

        const SizedBox(width: 15),
      ],
    );
  }

  // ==============================================================
  // DESKTOP NAV ITEM
  // ==============================================================

  Widget _navItem(
      String title,
      GlobalKey key,
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 3,
        vertical: 8,
      ),

      child: TextButton(
        onPressed: () {
          PortfolioNavigation.goTo(key);
        },

        style: TextButton.styleFrom(
          foregroundColor: AppTheme.white,

          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 10,
          ),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),

        child: Text(
          title,

          style: const TextStyle(
            color: AppTheme.grey,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  // ==============================================================
  // MOBILE MENU BUTTON
  // ==============================================================

  Widget _glassMenuButton(
      BuildContext context,
      ) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),

      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 15,
          sigmaY: 15,
        ),

        child: Container(
          width: 45,
          height: 45,

          decoration: BoxDecoration(
            color: AppTheme.glass,

            borderRadius: BorderRadius.circular(14),

            border: Border.all(
              color: AppTheme.glassBorderLight,
            ),
          ),

          child: IconButton(
            icon: const Icon(
              Icons.menu_rounded,
              color: AppTheme.blue,
            ),

            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(
    kToolbarHeight + 10,
  );
}

// ================================================================
// MOBILE DRAWER
// ================================================================

class PortfolioDrawer extends StatelessWidget {
  const PortfolioDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,

      backgroundColor: AppTheme.darkBlack,

      child: SafeArea(
        child: Column(
          children: [
            // ====================================================
            // DRAWER HEADER
            // ====================================================

            Padding(
              padding: const EdgeInsets.all(20),

              child: _drawerHeader(),
            ),

            const SizedBox(height: 10),

            // ====================================================
            // NAVIGATION ITEMS
            // ====================================================

            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),

                children: [
                  _drawerItem(
                    context,
                    'Home',
                    Icons.home_outlined,
                    PortfolioNavigation.homeKey,
                  ),

                  _drawerItem(
                    context,
                    'About',
                    Icons.person_outline_rounded,
                    PortfolioNavigation.aboutKey,
                  ),

                  _drawerItem(
                    context,
                    'Skills',
                    Icons.code_rounded,
                    PortfolioNavigation.skillsKey,
                  ),

                  _drawerItem(
                    context,
                    'Projects',
                    Icons.work_outline_rounded,
                    PortfolioNavigation.projectsKey,
                  ),

                  _drawerItem(
                    context,
                    'Education',
                    Icons.school_outlined,
                    PortfolioNavigation.educationKey,
                  ),

                  _drawerItem(
                    context,
                    'Contact',
                    Icons.mail_outline_rounded,
                    PortfolioNavigation.contactKey,
                  ),
                ],
              ),
            ),

            // ====================================================
            // DRAWER FOOTER
            // ====================================================

            Padding(
              padding: const EdgeInsets.all(20),

              child: Text(
                'Flutter Developer',

                style: TextStyle(
                  color: AppTheme.darkGrey,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ==============================================================
  // DRAWER HEADER
  // ==============================================================

  Widget _drawerHeader() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),

      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 18,
          sigmaY: 18,
        ),

        child: Container(
          width: double.infinity,

          padding: const EdgeInsets.all(20),

          decoration: BoxDecoration(
            color: AppTheme.glass,

            borderRadius: BorderRadius.circular(24),

            border: Border.all(
              color: AppTheme.glassBorderLight,
            ),
          ),

          child: Row(
            children: [
              // Logo
              Container(
                width: 45,
                height: 45,

                decoration: BoxDecoration(
                  shape: BoxShape.circle,

                  color: AppTheme.blue.withValues(
                    alpha: 0.10,
                  ),

                  border: Border.all(
                    color: AppTheme.blue.withValues(
                      alpha: 0.30,
                    ),
                  ),
                ),

                child: const Icon(
                  Icons.code_rounded,
                  color: AppTheme.blue,
                ),
              ),

              const SizedBox(width: 14),

              const Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,

                children: [
                  Text(
                    'Abdullah Tech',

                    style: TextStyle(
                      color: AppTheme.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 4),

                  Text(
                    'Portfolio',

                    style: TextStyle(
                      color: AppTheme.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ==============================================================
  // DRAWER ITEM
  // ==============================================================

  Widget _drawerItem(
      BuildContext context,
      String title,
      IconData icon,
      GlobalKey key,
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 3,
      ),

      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 3,
        ),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),

        leading: Container(
          width: 38,
          height: 38,

          decoration: BoxDecoration(
            color: AppTheme.blue.withValues(
              alpha: 0.08,
            ),

            borderRadius: BorderRadius.circular(11),
          ),

          child: Icon(
            icon,
            color: AppTheme.blue,
            size: 20,
          ),
        ),

        title: Text(
          title,

          style: const TextStyle(
            color: AppTheme.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),

        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: AppTheme.darkGrey,
          size: 14,
        ),

        onTap: () {
          Navigator.pop(context);

          PortfolioNavigation.goTo(key);
        },
      ),
    );
  }
}