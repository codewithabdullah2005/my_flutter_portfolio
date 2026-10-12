import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../theme/app_theme.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    final isMobile = width < 700;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 80,
        vertical: isMobile ? 60 : 90,
      ),
      color: AppTheme.darkBlack,
      child: Column(
        children: [
          // ==========================================
          // SECTION TITLE
          // ==========================================

          const Text(
            'Get in Touch',
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

          const SizedBox(height: 20),

          // ==========================================
          // DESCRIPTION
          // ==========================================

          const Text(
            'Let’s connect and build something amazing together.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppTheme.grey,
              fontSize: 16,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 45),

          // ==========================================
          // MAIN CONTACT CARD
          // ==========================================

          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 950,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(28),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 18,
                  sigmaY: 18,
                ),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(
                    isMobile ? 24 : 40,
                  ),
                  decoration: BoxDecoration(
                    color: AppTheme.glass,
                    borderRadius: BorderRadius.circular(28),
                    border: Border.all(
                      color: AppTheme.glassBorderLight,
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.blue.withValues(
                          alpha: 0.07,
                        ),
                        blurRadius: 35,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // ==================================
                      // TOP ICON
                      // ==================================

                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppTheme.blue.withValues(
                            alpha: 0.09,
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
                              blurRadius: 25,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.mail_outline_rounded,
                          color: AppTheme.blue,
                          size: 34,
                        ),
                      ),

                      const SizedBox(height: 20),

                      // ==================================
                      // HEADING
                      // ==================================

                      const Text(
                        'Have a project in mind?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppTheme.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        'Feel free to reach out. I am always open '
                            'to discussing new projects, ideas and opportunities.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppTheme.grey,
                          fontSize: 14,
                          height: 1.6,
                        ),
                      ),

                      const SizedBox(height: 35),

                      // ==================================
                      // CONTACT OPTIONS
                      // ==================================

                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 15,
                        runSpacing: 15,
                        children: [
                          _contactButton(
                            icon: Icons.email_outlined,
                            title: 'abdullahshahid0599@gmail.com',
                            subtitle:
                            'abdullahshahid0599@gmail.com',
                            isPrimary: true,
                            onPressed: _openEmail,
                          ),

                          _contactButton(
                            icon: Icons.code_rounded,
                            title: 'GitHub',
                            subtitle: 'codewithabdullah2005',
                            onPressed: _openGitHub,
                            isPrimary: true,
                          ),

                          _contactButton(
                            icon: Icons.business_center_outlined,
                            title: 'LinkedIn',
                            subtitle: 'abdullah shahid Rauf',
                            onPressed: _openLinkedIn,
                            isPrimary: true,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // CONTACT BUTTON
  // ============================================================

  Widget _contactButton({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onPressed,
    bool isPrimary = false,
  }) {
    return SizedBox(
      width: 250,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(18),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isPrimary
                  ? AppTheme.blue.withValues(alpha: 0.10)
                  : AppTheme.glassLight,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: isPrimary
                    ? AppTheme.blue.withValues(alpha: 0.35)
                    : AppTheme.glassBorderLight,
              ),
            ),
            child: Row(
              children: [
                // ==================================
                // ICON
                // ==================================

                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: AppTheme.blue.withValues(
                      alpha: 0.09,
                    ),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Icon(
                    icon,
                    color: AppTheme.blue,
                    size: 21,
                  ),
                ),

                const SizedBox(width: 12),

                // ==================================
                // TEXT
                // ==================================

                Expanded(
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: AppTheme.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 4),

                      Text(
                        subtitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: AppTheme.grey,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),

                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppTheme.darkGrey,
                  size: 13,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ============================================================
  // EMAIL
  // ============================================================

  static Future<void> _openEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'abdullahshahid0599@gmail.com',
      queryParameters: {
        'subject': 'Portfolio Contact',
        'body':
        'Hello Abdullah, I would like to get in touch with you.',
      },
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    }
  }

  // ============================================================
  // GITHUB
  // ============================================================

  static Future<void> _openGitHub() async {
    final Uri url = Uri.parse(
      'https://github.com/codewithabdullah2005',
    );

    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  // ============================================================
  // LINKEDIN
  // ============================================================

  static Future<void> _openLinkedIn() async {
    final Uri url = Uri.parse(
      'https://www.linkedin.com/in/abdullah-shahid-rauf-202157442/',
    );

    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    }
  }
}