import 'package:flutter/material.dart';

import 'web_theme.dart';

enum WebAddKind { record, photos, file, text, link }

/// The "Add Study Material" modal. Returns which option was picked, or null
/// if the student closed it. The page does the actual work.
Future<WebAddKind?> showWebAddMaterial(BuildContext context) {
  return showDialog<WebAddKind>(
    context: context,
    barrierColor: const Color(0x8C0F172A),
    builder: (_) => const _AddMaterialDialog(),
  );
}

class _AddMaterialDialog extends StatelessWidget {
  const _AddMaterialDialog();

  @override
  Widget build(BuildContext context) {
    final p = WebPalette.of(context);

    const items = <({WebAddKind kind, IconData icon, String label})>[
      (kind: WebAddKind.record, icon: Icons.mic_none_rounded, label: 'Record'),
      (kind: WebAddKind.photos, icon: Icons.image_outlined, label: 'Photos'),
      (
      kind: WebAddKind.file,
      icon: Icons.upload_file_outlined,
      label: 'File Upload'
      ),
      (kind: WebAddKind.text, icon: Icons.text_fields_rounded, label: 'Text'),
      (kind: WebAddKind.link, icon: Icons.link_rounded, label: 'Link'),
    ];

    return Dialog(
      backgroundColor: p.card,
      insetPadding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 440),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 22, 24, 26),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Add Study Material',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: p.text,
                      ),
                    ),
                  ),
                  IconButton(
                    tooltip: 'Close',
                    icon: Icon(Icons.close_rounded, color: p.subtitle),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final o in items)
                    SizedBox(
                      width: 118,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16),
                        hoverColor: WebPalette.indigo.withValues(alpha: 0.08),
                        onTap: () => Navigator.pop(context, o.kind),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Column(
                            children: [
                              Container(
                                width: 52,
                                height: 52,
                                decoration: BoxDecoration(
                                  color:
                                  WebPalette.indigo.withValues(alpha: 0.10),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(o.icon,
                                    color: WebPalette.indigo, size: 24),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                o.label,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: p.text,
                                ),
                              ),
                            ],
                          ),
                        ),
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
}

/// Pasted-text entry. Returns the text, or null if cancelled.
Future<String?> showWebTextEntry(BuildContext context) {
  final controller = TextEditingController();
  return showDialog<String>(
    context: context,
    builder: (ctx) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: const Text('Add Text'),
      content: SizedBox(
        width: 520,
        child: TextField(
          controller: controller,
          autofocus: true,
          minLines: 8,
          maxLines: 14,
          decoration: const InputDecoration(
            hintText: 'Paste or type the material you want notes from...',
            border: OutlineInputBorder(),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(ctx),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            final t = controller.text.trim();
            if (t.isEmpty) return;
            Navigator.pop(ctx, t);
          },
          style:
          ElevatedButton.styleFrom(backgroundColor: WebPalette.indigo),
          child:
          const Text('Continue', style: TextStyle(color: Colors.white)),
        ),
      ],
    ),
  );
}

/// Link entry. Returns the raw link text, or null if cancelled.
Future<String?> showWebLinkEntry(BuildContext context) {
  final controller = TextEditingController();
  return showDialog<String>(
    context: context,
    builder: (ctx) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: const Text('Add a Link'),
      content: SizedBox(
        width: 420,
        child: TextField(
          controller: controller,
          autofocus: true,
          keyboardType: TextInputType.url,
          decoration: const InputDecoration(hintText: 'https://...'),
          onSubmitted: (v) {
            if (v.trim().isNotEmpty) Navigator.pop(ctx, v.trim());
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(ctx),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () => Navigator.pop(ctx, controller.text.trim()),
          style:
          ElevatedButton.styleFrom(backgroundColor: WebPalette.indigo),
          child:
          const Text('Continue', style: TextStyle(color: Colors.white)),
        ),
      ],
    ),
  );
}