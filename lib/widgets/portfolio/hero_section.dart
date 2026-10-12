import 'dart:ui';

import 'package:flutter/material.dart';
import '../../../theme/app_theme.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    final isMobile = width < 600;
    final isTablet = width >= 600 && width < 1000;

    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(
        minHeight: 650,
      ),

      padding: EdgeInsets.symmetric(
        horizontal: isMobile
            ? 20
            : isTablet
            ? 40
            : 80,
        vertical: isMobile ? 50 : 80,
      ),

      child: isMobile
          ? _buildMobile(context)
          : _buildDesktop(context),
    );
  }

  // ============================================================
  // MOBILE
  // ============================================================

  Widget _buildMobile(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _profileCard(
          size: 230,
        ),

        const SizedBox(height: 35),

        _glassTextCard(
          context,
          center: true,
        ),
      ],
    );
  }

  // ============================================================
  // DESKTOP
  // ============================================================

  Widget _buildDesktop(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // --------------------------------------------------------
        // LEFT SIDE
        // --------------------------------------------------------

        Expanded(
          flex: 6,
          child: _glassTextCard(
            context,
            center: false,
          ),
        ),

        const SizedBox(width: 50),

        // --------------------------------------------------------
        // RIGHT SIDE
        // --------------------------------------------------------

        Expanded(
          flex: 4,
          child: Center(
            child: _profileCard(
              size: 330,
            ),
          ),
        ),
      ],
    );
  }

  // ============================================================
  // GLASS TEXT CARD
  // ============================================================

  Widget _glassTextCard(
      BuildContext context, {
        required bool center,
      }) {
    return _glassCard(
      padding: const EdgeInsets.all(40),

      child: Column(
        crossAxisAlignment: center
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          // ------------------------------------------------------
          // SMALL INTRO
          // ------------------------------------------------------

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 8,
            ),

            decoration: BoxDecoration(
              color: AppTheme.blue.withValues(
                alpha: 0.10,
              ),

              borderRadius: BorderRadius.circular(100),

              border: Border.all(
                color: AppTheme.blue.withValues(
                  alpha: 0.25,
                ),
              ),
            ),

            child: const Text(
              'HELLO, I AM',
              style: TextStyle(
                color: AppTheme.blue,
                fontSize: 12,
                fontWeight: FontWeight.w600,
                letterSpacing: 3,
              ),
            ),
          ),

          const SizedBox(height: 22),

          // ------------------------------------------------------
          // NAME
          // ------------------------------------------------------

          Text(
            'Abdullah',
            textAlign: center
                ? TextAlign.center
                : TextAlign.left,

            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(
              fontSize:
              MediaQuery.sizeOf(context).width < 600
                  ? 38
                  : 54,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.5,
            ),
          ),

          const SizedBox(height: 12),

          // ------------------------------------------------------
          // PROFESSION
          // ------------------------------------------------------

          Text(
            'Flutter Developer',
            textAlign: center
                ? TextAlign.center
                : TextAlign.left,

            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(
              color: AppTheme.cyan,
              fontSize:
              MediaQuery.sizeOf(context).width < 600
                  ? 22
                  : 30,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 22),

          // ------------------------------------------------------
          // DESCRIPTION
          // ------------------------------------------------------

          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 650,
            ),

            child: Text(
              'I am a BS Computer Science student '
                  'and Flutter Developer passionate about '
                  'building modern, responsive and user-friendly '
                  'mobile applications.',

              textAlign: center
                  ? TextAlign.center
                  : TextAlign.left,

              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(
                fontSize: 16,
                height: 1.7,
              ),
            ),
          ),

          const SizedBox(height: 30),

          // ------------------------------------------------------
          // BUTTONS
          // ------------------------------------------------------

          Wrap(
            alignment: center
                ? WrapAlignment.center
                : WrapAlignment.start,

            spacing: 14,
            runSpacing: 14,

            children: [
              ElevatedButton.icon(
                onPressed: () {},

                icon: const Icon(
                  Icons.arrow_forward_rounded,
                  size: 18,
                ),

                label: const Text(
                  'View Projects',
                ),
              ),

              OutlinedButton.icon(
                onPressed: () {},

                icon: const Icon(
                  Icons.mail_outline_rounded,
                  size: 18,
                ),

                label: const Text(
                  'Contact Me',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ============================================================
  // PROFILE GLASS CARD
  // ============================================================

  Widget _profileCard({
    required double size,
  }) {
    return _glassCard(
      padding: const EdgeInsets.all(20),

      borderRadius: 32,

      child: Container(
        width: size,
        height: size,

        decoration: BoxDecoration(
          shape: BoxShape.circle,

          border: Border.all(
            color: AppTheme.blue.withValues(
              alpha: 0.55,
            ),
            width: 2,
          ),

          boxShadow: [
            BoxShadow(
              color: AppTheme.blue.withValues(
                alpha: 0.20,
              ),
              blurRadius: 40,
              spreadRadius: 5,
            ),

            BoxShadow(
              color: AppTheme.cyan.withValues(
                alpha: 0.08,
              ),
              blurRadius: 80,
              spreadRadius: 10,
            ),
          ],
        ),

        child: ClipOval(
          child: Image.asset(
               'assets/hero_pic.png',

            fit: BoxFit.cover,

            errorBuilder: (
                context,
                error,
                stackTrace,
                ) {
              return Container(
                color: AppTheme.glass,

                child: const Icon(
                  Icons.person_outline_rounded,
                  color: AppTheme.blue,
                  size: 100,
                ),
              );
            },
          ),
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
    const EdgeInsets.all(24),

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
          padding: padding,

          decoration: BoxDecoration(
            color: AppTheme.glass,

            borderRadius: BorderRadius.circular(
              borderRadius,
            ),

            border: Border.all(
              color: AppTheme.glassBorderLight,
              width: 1,
            ),

            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(
                  alpha: 0.30,
                ),
                blurRadius: 35,
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