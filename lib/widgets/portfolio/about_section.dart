import 'dart:ui';

import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    final isMobile = width < 600;
    final isTablet = width >= 600 && width < 1000;

    return Container(
      width: double.infinity,

      padding: EdgeInsets.symmetric(
        horizontal: isMobile
            ? 20
            : isTablet
            ? 40
            : 60,
        vertical: 90,
      ),

      decoration: const BoxDecoration(
        color: AppTheme.darkBlack,
      ),

      child: Column(
        children: [
          // ======================================================
          // SECTION TITLE
          // ======================================================

          _sectionTitle(),

          const SizedBox(height: 12),

          // Small line under title
          Container(
            width: 50,
            height: 3,

            decoration: BoxDecoration(
              color: AppTheme.blue,
              borderRadius: BorderRadius.circular(100),

              boxShadow: [
                BoxShadow(
                  color: AppTheme.blue.withValues(
                    alpha: 0.5,
                  ),
                  blurRadius: 12,
                ),
              ],
            ),
          ),

          const SizedBox(height: 35),

          // ======================================================
          // ABOUT DESCRIPTION
          // ======================================================

          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 900,
            ),

            child: _glassCard(
              child: Text(
                'I am Abdullah, a BS Computer Science '
                    'student and aspiring Flutter Developer. '
                    'I enjoy learning modern technologies and '
                    'building applications with Flutter and Dart. '
                    'My focus is on writing clean code, creating '
                    'responsive interfaces and developing useful '
                    'real-world applications.',

                textAlign: TextAlign.center,

                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(
                  fontSize: 17,
                  height: 1.8,
                ),
              ),
            ),
          ),

          const SizedBox(height: 45),

          // ======================================================
          // INFO CARDS
          // ======================================================

          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 20,

            children: [
              _infoCard(
                icon: Icons.school_outlined,
                title: 'Education',
                value: 'BS Computer Science',
              ),

              _infoCard(
                icon: Icons.code_rounded,
                title: 'Specialization',
                value: 'Flutter Development',
              ),

              _infoCard(
                icon: Icons.location_on_outlined,
                title: 'Location',
                value: 'Pakistan',
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ============================================================
  // SECTION TITLE
  // ============================================================

  Widget _sectionTitle() {
    return const Text(
      'About Me',

      style: TextStyle(
        color: AppTheme.white,
        fontSize: 36,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.8,
      ),
    );
  }

  // ============================================================
  // INFO CARD
  // ============================================================

  Widget _infoCard({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return SizedBox(
      width: 260,

      child: _glassCard(
        padding: const EdgeInsets.all(28),

        child: Column(
          children: [
            // ----------------------------------------------------
            // ICON
            // ----------------------------------------------------

            Container(
              width: 65,
              height: 65,

              decoration: BoxDecoration(
                shape: BoxShape.circle,

                color: AppTheme.blue.withValues(
                  alpha: 0.10,
                ),

                border: Border.all(
                  color: AppTheme.blue.withValues(
                    alpha: 0.25,
                  ),
                ),

                boxShadow: [
                  BoxShadow(
                    color: AppTheme.blue.withValues(
                      alpha: 0.12,
                    ),
                    blurRadius: 20,
                  ),
                ],
              ),

              child: Icon(
                icon,
                color: AppTheme.blue,
                size: 30,
              ),
            ),

            const SizedBox(height: 20),

            // ----------------------------------------------------
            // TITLE
            // ----------------------------------------------------

            Text(
              title,

              textAlign: TextAlign.center,

              style: const TextStyle(
                color: AppTheme.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 10),

            // ----------------------------------------------------
            // VALUE
            // ----------------------------------------------------

            Text(
              value,

              textAlign: TextAlign.center,

              style: const TextStyle(
                color: AppTheme.grey,
                fontSize: 14,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // GLASS CARD
  // ============================================================

  Widget _glassCard({
    required Widget child,

    EdgeInsetsGeometry padding =
    const EdgeInsets.all(30),

    double borderRadius = 28,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        borderRadius,
      ),

      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 18,
          sigmaY: 18,
        ),

        child: Container(
          width: double.infinity,

          padding: padding,

          decoration: BoxDecoration(
            // Transparent glass
            color: AppTheme.glass,

            borderRadius: BorderRadius.circular(
              borderRadius,
            ),

            // Glass border
            border: Border.all(
              color: AppTheme.glassBorderLight,
              width: 1,
            ),

            // Soft shadow
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(
                  alpha: 0.25,
                ),
                blurRadius: 30,
                spreadRadius: -10,
              ),
            ],
          ),

          child: child,
        ),
      ),
    );
  }
}