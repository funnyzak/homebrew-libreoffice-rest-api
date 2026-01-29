# Homebrew libreoffice-rest-api

[![Build Status](https://github.com/funnyzak/homebrew-libreoffice-rest-api/workflows/CI/badge.svg)](https://github.com/funnyzak/homebrew-libreoffice-rest-api/actions)

This is the official Homebrew tap for [libreoffice-rest-api](https://github.com/funnyzak/libreoffice-rest-api), a powerful HTTP request debugging tool built in Go.

## Installation

### Prerequisites

- macOS 10.15 or later
- [Homebrew](https://brew.sh/) installed

### Install libreoffice-rest-api

```bash
# Add the tap
brew tap funnyzak/libreoffice-rest-api

# Install libreoffice-rest-api
brew install libreoffice-rest-api
```

### Verify Installation

```bash
libreoffice-rest-api --version
```

## Usage

After installation, you can start using libreoffice-rest-api immediately:

```bash
# Start libreoffice-rest-api with default settings
libreoffice-rest-api

# Start with custom configuration
libreoffice-rest-api --config /path/to/config.yaml
```

For detailed usage instructions, please refer to the [official libreoffice-rest-api documentation](https://github.com/funnyzak/libreoffice-rest-api#readme).

## Update

To update libreoffice-rest-api to the latest version:

```bash
brew update && brew upgrade libreoffice-rest-api
```

## Uninstallation

To completely remove libreoffice-rest-api:

```bash
# Uninstall the formula
brew uninstall libreoffice-rest-api

# Remove the tap (optional)
brew untap funnyzak/libreoffice-rest-api
```

## Related Links

- [libreoffice-rest-api Main Repository](https://github.com/funnyzak/libreoffice-rest-api)
- [Homebrew Documentation](https://docs.brew.sh/)
- [Homebrew Formula Cookbook](https://docs.brew.sh/Formula-Cookbook)

## Support

If you encounter any issues with the Homebrew formula specifically, please [open an issue](https://github.com/funnyzak/homebrew-libreoffice-rest-api/issues) in this repository.

For issues with the libreoffice-rest-api application itself, please [open an issue](https://github.com/funnyzak/libreoffice-rest-api/issues) in the main libreoffice-rest-api repository.