// functions/src/emailTemplate.ts

export interface EmailTemplateData {
  preferredName: string;
  subjects: string[];
  deepLink: string;
  unsubscribeLink: string;
}

function escapeHtml(text: string): string {
  return String(text)
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;")
    .replace(/"/g, "&quot;")
    .replace(/'/g, "&#39;");
}

export function buildEmailHtml(data: EmailTemplateData): string {
  const subjectItems = data.subjects
    .map(
      (s) =>
        `<li style="margin:0 0 6px 0;color:#2d3a5e;font-size:15px;">${escapeHtml(s)}</li>`
    )
    .join("");

  return `<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Kepler Study Reminder</title>
</head>
<body style="margin:0;padding:0;background-color:#f6f8fb;font-family:Arial,Helvetica,sans-serif;">
  <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" style="background-color:#f6f8fb;">
    <tr>
      <td align="center" style="padding:30px 10px;">
        <table role="presentation" width="600" cellspacing="0" cellpadding="0" border="0" style="max-width:600px;width:100%;background-color:#ffffff;border-radius:12px;box-shadow:0 2px 10px rgba(0,0,0,0.06);">
          <tr>
            <td style="padding:36px 32px 24px 32px;">
              <p style="margin:0 0 8px 0;font-size:22px;font-weight:600;color:#1a1a2e;line-height:1.3;">
                Hello ${escapeHtml(data.preferredName)},
              </p>
              <p style="margin:0 0 20px 0;font-size:15px;color:#4a5568;line-height:1.6;">
                It is time to check in on your study material. Your subjects are ready for you.
              </p>

              <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" style="background-color:#f0f4ff;border-radius:8px;margin-bottom:24px;">
                <tr>
                  <td style="padding:16px 20px;">
                    <p style="margin:0 0 8px 0;font-size:13px;font-weight:600;color:#1a1a2e;text-transform:uppercase;letter-spacing:0.5px;">Your subjects</p>
                    <ul style="margin:0;padding-left:18px;">
                      ${subjectItems}
                    </ul>
                  </td>
                </tr>
              </table>

              <table role="presentation" cellspacing="0" cellpadding="0" border="0" style="margin-bottom:24px;">
                <tr>
                  <td align="center" style="background-color:#2563eb;border-radius:8px;">
                    <a href="${escapeHtml(data.deepLink)}" target="_blank" style="display:inline-block;padding:14px 36px;font-size:16px;font-weight:600;color:#ffffff;text-decoration:none;border-radius:8px;">
                      Open Kepler Study
                    </a>
                  </td>
                </tr>
              </table>

              <p style="margin:0 0 24px 0;font-size:14px;color:#4a5568;line-height:1.6;">
                Consistent, focused sessions make the difference. You have got this.
              </p>

              <p style="margin:0;padding-top:16px;border-top:1px solid #e2e8f0;font-size:12px;color:#8892a4;line-height:1.6;">
                You are receiving this because you added study material to Kepler Study.<br>
                <a href="${escapeHtml(data.unsubscribeLink)}" style="color:#8892a4;text-decoration:underline;">Turn off study reminders</a>
              </p>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
</body>
</html>`;
}