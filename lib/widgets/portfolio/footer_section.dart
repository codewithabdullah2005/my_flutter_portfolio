import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import 'portfolio_app_bar.dart';

// ============================================================
// FOOTER SECTION
// ============================================================

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final isMobile = width < 700;

    return Container(
      width: double.infinity,
      color: AppTheme.darkBlack,
      child: Column(
        children: [
          // ==========================================
          // TOP GLOW LINE
          // ==========================================

          Container(
            width: double.infinity,
            height: 1,
            decoration: BoxDecoration(
              color: AppTheme.blue.withValues(alpha: 0.35),
              boxShadow: [
                BoxShadow(
                  color: AppTheme.blue.withValues(alpha: 0.15),
                  blurRadius: 15,
                ),
              ],
            ),
          ),

          // ==========================================
          // MAIN FOOTER
          // ==========================================

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 25 : 70,
              vertical: 60,
            ),
            child: isMobile
                ? const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _BrandSection(),
                SizedBox(height: 45),
                _NavigationSection(),
                SizedBox(height: 40),
                _ServicesSection(),
                SizedBox(height: 40),
                _ContactSection(),
              ],
            )
                : const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: _BrandSection(),
                ),
                SizedBox(width: 40),
                Expanded(
                  child: _NavigationSection(),
                ),
                SizedBox(width: 40),
                Expanded(
                  child: _ServicesSection(),
                ),
                SizedBox(width: 40),
                Expanded(
                  child: _ContactSection(),
                ),
              ],
            ),
          ),

          // ==========================================
          // DIVIDER
          // ==========================================

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 25 : 70,
            ),
            child: Divider(
              color: AppTheme.glassBorderLight,
              height: 1,
            ),
          ),

          // ==========================================
          // BOTTOM FOOTER
          // ==========================================

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 25 : 70,
              vertical: 22,
            ),
            child: isMobile
                ? const Column(
              children: [
                _Copyright(),
                SizedBox(height: 12),
                _SocialIcons(),
              ],
            )
                : const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _Copyright(),
                _SocialIcons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// BRAND SECTION
// ============================================================

class _BrandSection extends StatelessWidget {
  const _BrandSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Logo
        Row(
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: AppTheme.blue.withValues(alpha: 0.10),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: AppTheme.blue.withValues(alpha: 0.30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppTheme.blue.withValues(alpha: 0.10),
                    blurRadius: 18,
                  ),
                ],
              ),
              child: const Icon(
                Icons.code_rounded,
                color: AppTheme.blue,
                size: 23,
              ),
            ),

            const SizedBox(width: 14),

            const Text(
              'Abdullah Tech',
              style: TextStyle(
                color: AppTheme.white,
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),

        const Text(
          'Flutter Developer',
          style: TextStyle(
            color: AppTheme.cyan,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),

        const SizedBox(height: 14),

        const Text(
          'I build modern, responsive and user-friendly '
              'Flutter applications with clean UI and reliable '
              'backend integration.',
          style: TextStyle(
            color: AppTheme.grey,
            fontSize: 14,
            height: 1.7,
          ),
        ),
      ],
    );
  }
}

// ============================================================
// NAVIGATION SECTION
// ============================================================

class _NavigationSection extends StatelessWidget {
  const _NavigationSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _FooterTitle(
          title: 'Quick Links',
        ),

        const SizedBox(height: 20),

        _footerLink(
          'Home',
          PortfolioNavigation.homeKey,
        ),

        _footerLink(
          'About',
          PortfolioNavigation.aboutKey,
        ),

        _footerLink(
          'Skills',
          PortfolioNavigation.skillsKey,
        ),

        _footerLink(
          'Projects',
          PortfolioNavigation.projectsKey,
        ),

        _footerLink(
          'Education',
          PortfolioNavigation.educationKey,
        ),

        _footerLink(
          'Contact',
          PortfolioNavigation.contactKey,
        ),
      ],
    );
  }

  Widget _footerLink(
      String title,
      GlobalKey key,
      ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: () {
          PortfolioNavigation.goTo(key);
        },
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 3,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppTheme.blue,
                size: 11,
              ),

              const SizedBox(width: 8),

              Text(
                title,
                style: const TextStyle(
                  color: AppTheme.grey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================
// SERVICES SECTION
// ============================================================

class _ServicesSection extends StatelessWidget {
  const _ServicesSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _FooterTitle(
          title: 'What I Do',
        ),

        const SizedBox(height: 20),

        _service(
          Icons.phone_android_rounded,
          'Flutter Development',
        ),

        _service(
          Icons.design_services_rounded,
          'UI / UX Development',
        ),

        _service(
          Icons.cloud_rounded,
          'Firebase Integration',
        ),

        _service(
          Icons.api_rounded,
          'REST API Integration',
        ),

        _service(
          Icons.devices_rounded,
          'Responsive Applications',
        ),
      ],
    );
  }

  Widget _service(
      IconData icon,
      String title,
      ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppTheme.blue,
            size: 18,
          ),

          const SizedBox(width: 10),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: AppTheme.grey,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// CONTACT SECTION
// ============================================================

class _ContactSection extends StatelessWidget {
  const _ContactSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _FooterTitle(
          title: 'Get In Touch',
        ),

        const SizedBox(height: 20),

        _contactItem(
          Icons.email_outlined,
          'Email',
          'abdullahshahid0599@gmail.com',
        ),

        const SizedBox(height: 15),

        _contactItem(
          Icons.location_on_outlined,
          'Location',
          'Pakistan',
        ),

        const SizedBox(height: 15),

        _contactItem(
          Icons.work_outline_rounded,
          'Availability',
          'Open for opportunities',
        ),
      ],
    );
  }

  Widget _contactItem(
      IconData icon,
      String title,
      String value,
      ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: AppTheme.blue.withValues(alpha: 0.08),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            color: AppTheme.blue,
            size: 17,
          ),
        ),

        const SizedBox(width: 10),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: AppTheme.darkGrey,
                  fontSize: 11,
                ),
              ),

              const SizedBox(height: 3),

              Text(
                value,
                style: const TextStyle(
                  color: AppTheme.grey,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ============================================================
// FOOTER TITLE
// ============================================================

class _FooterTitle extends StatelessWidget {
  final String title;

  const _FooterTitle({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: AppTheme.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 8),

        Container(
          width: 35,
          height: 2,
          decoration: BoxDecoration(
            color: AppTheme.blue,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}

// ============================================================
// COPYRIGHT
// ============================================================

class _Copyright extends StatelessWidget {
  const _Copyright();

  @override
  Widget build(BuildContext context) {
    return const Text(
      '© 2026 Abdullah Tech. All rights reserved.',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: AppTheme.darkGrey,
        fontSize: 12,
      ),
    );
  }
}

// ============================================================
// SOCIAL ICONS
// ============================================================

class _SocialIcons extends StatelessWidget {
  const _SocialIcons();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _socialButton(
          Icons.code_rounded,
        ),

        const SizedBox(width: 10),

        _socialButton(
          Icons.link_rounded,
        ),

        const SizedBox(width: 10),

        _socialButton(
          Icons.email_outlined,
        ),
      ],
    );
  }

  Widget _socialButton(IconData icon) {
    return Container(
      width: 38,
      height: 38,
      decoration: BoxDecoration(
        color: AppTheme.glass,
        borderRadius: BorderRadius.circular(11),
        border: Border.all(
          color: AppTheme.glassBorder,
        ),
      ),
      child: Icon(
        icon,
        color: AppTheme.grey,
        size: 18,
      ),
    );
  }
}