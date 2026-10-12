import 'dart:ui';

import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

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
            : 80,
        vertical: isMobile ? 60 : 90,
      ),
      color: AppTheme.black,
      child: Column(
        children: [
          // =========================
          // SECTION TITLE
          // =========================

          const Text(
            'My Skills',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppTheme.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
            ),
          ),

          const SizedBox(height: 12),

          // =========================
          // BLUE LINE
          // =========================

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

          const SizedBox(height: 20),

          // =========================
          // DESCRIPTION
          // =========================

          const Text(
            'Technologies and tools I use to build modern applications.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppTheme.grey,
              fontSize: 16,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 45),

          // =========================
          // SKILLS
          // =========================

          Wrap(
            alignment: WrapAlignment.center,
            spacing: isMobile ? 12 : 20,
            runSpacing: isMobile ? 12 : 20,
            children: [
              _skillCard(
                icon: Icons.flutter_dash,
                name: 'Flutter',
                level: 'Advanced',
              ),

              _skillCard(
                icon: Icons.code_rounded,
                name: 'Dart',
                level: 'Advanced',
              ),

              _skillCard(
                icon: Icons.cloud_rounded,
                name: 'Firebase',
                level: 'Intermediate',
              ),

              _skillCard(
                icon: Icons.api_rounded,
                name: 'REST API',
                level: 'Intermediate',
              ),

              _skillCard(
                icon: Icons.source_rounded,
                name: 'Git',
                level: 'Intermediate',
              ),

              _skillCard(
                icon: Icons.account_tree_rounded,
                name: 'GitHub',
                level: 'Intermediate',
              ),

              _skillCard(
                icon: Icons.settings_rounded,
                name: 'Provider',
                level: 'Intermediate',
              ),

              _skillCard(
                icon: Icons.storage_rounded,
                name: 'SQLite',
                level: 'Intermediate',
              ),

              _skillCard(
                icon: Icons.web_rounded,
                name: 'Responsive UI',
                level: 'Intermediate',
              ),

              _skillCard(
                icon: Icons.design_services_rounded,
                name: 'Material Design',
                level: 'Intermediate',
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ============================================================
  // SKILL CARD
  // ============================================================

  Widget _skillCard({
    required IconData icon,
    required String name,
    required String level,
  }) {
    return SizedBox(
      width: 180,
      height: 170,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 18,
            sigmaY: 18,
          ),
          child: Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: AppTheme.glass,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(
                color: AppTheme.glassBorderLight,
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppTheme.blue.withValues(alpha: 0.07),
                  blurRadius: 25,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // =========================
                // ICON
                // =========================

                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppTheme.blue.withValues(
                      alpha: 0.09,
                    ),
                    border: Border.all(
                      color: AppTheme.blue.withValues(
                        alpha: 0.22,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.blue.withValues(
                          alpha: 0.10,
                        ),
                        blurRadius: 18,
                      ),
                    ],
                  ),
                  child: Icon(
                    icon,
                    color: AppTheme.blue,
                    size: 29,
                  ),
                ),

                const SizedBox(height: 15),

                // =========================
                // NAME
                // =========================

                Text(
                  name,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: AppTheme.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 7),

                // =========================
                // LEVEL
                // =========================

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppTheme.blue.withValues(
                      alpha: 0.08,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    level,
                    style: const TextStyle(
                      color: AppTheme.cyan,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}