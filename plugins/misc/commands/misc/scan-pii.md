Scan repository for personally identifiable information (PII) before open sourcing.

Your task:
1. Proactively scan for subtle forms of PII:
   - Personal email addresses
   - Phone numbers
   - Physical addresses
   - Names in comments or documentation
   - Social media handles
   - IP addresses
   - MAC addresses
   - Personal identifiers in test data
   - Usernames that might be personally identifying
   - Organization-specific information

2. Assume API key protection is already handled, focus on:
   - Developer names in code comments
   - Email addresses in git commits (use git log)
   - Personal information in documentation
   - Internal URLs or server names
   - Employee IDs or internal identifiers
   - Customer data in examples
   - Screenshots with personal info

3. Do NOT remediate automatically:
   - Only identify and report findings
   - Do not delete, change, or obfuscate without permission
   - Present comprehensive list to user

4. Generate detailed report:
   ```markdown
   ## PII Scan Report

   ### High Risk
   - File: src/config.js:45
     Type: Email address
     Content: [REDACTED]@company.com
     Context: Developer email in comment

   ### Medium Risk
   - File: docs/api.md:12
     Type: Internal URL
     Content: https://internal-server.local
     Context: Example API endpoint

   ### Low Risk
   - File: README.md:34
     Type: Username
     Content: @john_developer
     Context: Acknowledgments section

   ## Recommendations
   1. Replace developer emails with generic project email
   2. Use example.com for URL examples
   3. Consider anonymizing usernames
   ```

5. Seek user advice on remediation approach

Help users identify PII they may wish to remove before making repositories public.
