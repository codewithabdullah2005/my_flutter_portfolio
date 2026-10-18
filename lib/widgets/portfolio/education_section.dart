import 'dart:ui';
import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final isMobile = width < 650;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 80,
        vertical: isMobile ? 60 : 90,
      ),
      color: AppTheme.black,
      child: Column(
        children: [
          // ==========================================
          // SECTION TITLE
          // ==========================================

          const Text(
            'Education',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppTheme.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
            ),
          ),

          const SizedBox(height: 12),

          // ==========================================
          // BLUE LINE
          // ==========================================

          Container(
            width: 60,
            height: 3,
            decoration: BoxDecoration(
              color: AppTheme.blue,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: AppTheme.blue.withValues(alpha: 0.45),
                  blurRadius: 12,
                  spreadRadius: 1,
                ),
              ],
            ),
          ),

          const SizedBox(height: 45),

          // ==========================================
          // EDUCATION CARD
          // ==========================================

          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 850,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(26),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 18,
                  sigmaY: 18,
                ),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(
                    isMobile ? 24 : 35,
                  ),
                  decoration: BoxDecoration(
                    color: AppTheme.glass,
                    borderRadius: BorderRadius.circular(26),
                    border: Border.all(
                      color: AppTheme.glassBorderLight,
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.blue.withValues(
                          alpha: 0.07,
                        ),
                        blurRadius: 30,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: isMobile
                      ? const _MobileEducationContent()
                      : const _DesktopEducationContent(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// DESKTOP EDUCATION CONTENT
// ============================================================

class _DesktopEducationContent extends StatelessWidget {
  const _DesktopEducationContent();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // ==========================================
        // ICON
        // ==========================================

        _educationIcon(),

        const SizedBox(width: 30),

        // ==========================================
        // CONTENT
        // ==========================================

        const Expanded(
          child: _EducationText(),
        ),

        const SizedBox(width: 25),

        // ==========================================
        // STATUS
        // ==========================================

        _statusBadge(),
      ],
    );
  }
}

// ============================================================
// MOBILE EDUCATION CONTENT
// ============================================================

class _MobileEducationContent extends StatelessWidget {
  const _MobileEducationContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Icon
        _educationIcon(),

        const SizedBox(height: 25),

        // Content
        const _EducationText(),

        const SizedBox(height: 20),

        // Status
        _statusBadge(),
      ],
    );
  }
}

// ============================================================
// EDUCATION ICON
// ============================================================

Widget _educationIcon() {
  return Container(
    width: 75,
    height: 75,
    decoration: BoxDecoration(
      color: AppTheme.blue.withValues(
        alpha: 0.08,
      ),
      borderRadius: BorderRadius.circular(20),
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
          blurRadius: 25,
          spreadRadius: 2,
        ),
      ],
    ),
    child: const Icon(
      Icons.school_rounded,
      color: AppTheme.blue,
      size: 38,
    ),
  );
}

// ============================================================
// EDUCATION TEXT
// ============================================================

class _EducationText extends StatelessWidget {
  const _EducationText();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Degree
        Text(
          'BS Computer Science',
          style: TextStyle(
            color: AppTheme.white,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 10),

        // Description
        Text(
          'Bachelor of Science in Computer Science',
          style: TextStyle(
            color: AppTheme.grey,
            fontSize: 15,
            height: 1.5,
          ),
        ),

        SizedBox(height: 15),

        // Additional information
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.computer_rounded,
              color: AppTheme.cyan,
              size: 17,
            ),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                'Computer Science & Software Development',
                style: TextStyle(
                  color: AppTheme.grey,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// ============================================================
// STATUS BADGE
// ============================================================

Widget _statusBadge() {
  return Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 14,
      vertical: 8,
    ),
    decoration: BoxDecoration(
      color: AppTheme.blue.withValues(
        alpha: 0.08,
      ),
      borderRadius: BorderRadius.circular(30),
      border: Border.all(
        color: AppTheme.blue.withValues(
          alpha: 0.20,
        ),
      ),
    ),
    child: const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.school_outlined,
          color: AppTheme.cyan,
          size: 15,
        ),
        SizedBox(width: 7),
        Text(
          'Education',
          style: TextStyle(
            color: AppTheme.cyan,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}