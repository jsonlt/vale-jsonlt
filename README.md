# Vale Styles for JSONLT

Vale styles and vocabulary for JSONLT specification and documentation projects.

## Styles Included

### RFC 2119 Compliance

- **RFC2119-uppercase**: Ensures RFC 2119 keywords (MUST, SHALL, SHOULD, MAY, etc.) are uppercase when used normatively
- **RFC2119-passive**: Warns when RFC 2119 keywords appear in passive voice constructions

### Testability

- **Testability-unmeasurable**: Flags unmeasurable terms like "quickly", "efficiently", "user-friendly"
- **Testability-vague**: Flags vague terms that make requirements untestable like "appropriate", "reasonable", "as needed"

## Vocabulary

The JSONLT vocabulary includes project-specific terms:

- Technical terms: `canonicalization`, `shortname`, `fsync`, `reentrant`, etc.
- Project names: `JSONLT`, `jsonlt`
- People: `Erdtman`, `Rundgren`

## Installation

### Via Vale Packages

Add to your `.vale.ini`:

```ini
StylesPath = .vale
MinAlertLevel = warning
Vocab = JSONLT

Packages = https://github.com/jsonlt/vale-jsonlt/releases/latest/download/JSONLT.zip

[*.md]
BasedOnStyles = Vale, JSONLT
```

Then run:

```bash
vale sync
```

### Manual Installation

1. Download the latest release from [Releases](https://github.com/jsonlt/vale-jsonlt/releases)
2. Extract to your Vale styles directory
3. Reference in your `.vale.ini`

## Configuration

### Recommended Base Configuration

For specification documents:

```ini
[*.md]
BasedOnStyles = Vale, Google, write-good, proselint, JSONLT
```

For community documents (README, CONTRIBUTING, etc.):

```ini
[{CODE_OF_CONDUCT.md,CONTRIBUTING.md,README.md,SECURITY.md}]
BasedOnStyles = Vale, Google, write-good, proselint, JSONLT
Google.FirstPerson = NO
Google.Will = NO
proselint.Annotations = NO
```

### Customizing the Vocabulary

To add project-specific terms, create your own vocabulary and combine with JSONLT:

```ini
Vocab = JSONLT, MyProject
```

## Development

### Prerequisites

- [Vale](https://vale.sh/) v3.0+
- [uv](https://docs.astral.sh/uv/) (for Python tooling)
- [PNPM](https://pnpm.io/) (for markdownlint)

### Testing Styles

```bash
# Sync external Vale packages
just vale-sync

# Test against sample documents
vale path/to/document.md
```

## License

This project is licensed under the [Creative Commons Attribution 4.0 International License](LICENSE).
