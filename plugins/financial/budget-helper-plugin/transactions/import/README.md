# Transaction Import Directory

Place transaction files here for processing.

## Supported Formats

- **CSV**: Bank/credit card exports in CSV format
- **OFX/QFX**: Quicken/Quickbooks formats
- **JSON**: Financial app exports

## File Naming Convention

Use descriptive names including the source and month:

- `checking-2025-11.csv`
- `credit-card-visa-2025-11.csv`
- `savings-2025-11.csv`

## Expected CSV Format

At minimum, CSV files should include:
- Date
- Description/Merchant
- Amount

Optional but helpful:
- Category (will be overridden by processor if configured)
- Account name
- Transaction ID

## After Processing

Files remain here as originals. Processed data goes to `../processed/`.

Consider moving old files to an archive folder or deleting after verification.

## Privacy Note

These files may contain sensitive account information. Ensure they are added to .gitignore if using version control.
