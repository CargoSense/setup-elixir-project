# CargoSense/setup-elixir-project

🧪 ⚙️ **A composite GitHub Action for configuring, installing, and building your project's [Erlang/OTP](https://www.erlang.org) and [Elixir](https://elixir-lang.org) versions, dependencies, and application code.**

[![Build](https://img.shields.io/github/actions/workflow/status/CargoSense/setup-elixir-project/ci.yml?branch=main&logo=github&style=for-the-badge)](https://github.com/CargoSense/setup-elixir-project/actions/workflows/ci.yml)

## Usage

```yaml
- uses: CargoSense/setup-elixir-project@v1
  with:
    # Erlang/OTP version to install. Reads from `.tool-versions` if unset.
    otp-version: ""
    # Elixir version to install. Reads from `.tool-versions` if unset.
    elixir-version: ""
    # Install Hex using `mix local.hex`.
    # Default: true
    install-hex: ""
    # Install Rebar using `mix local.rebar`.
    # Default: true
    install-rebar:
    # An arbitrary string added to the derived cache key names. Set or change to
    # invalidate existing caches.
    # Default: "v1"
    cache-key: ""
    # Compile application using `mix compile`.
    # Default: true
    build-app: true
    # Additional flags to pass to `mix compile`.
    # Default: "--all-warnings"
    build-flags: ""
```

### Basic Usage

```yaml
steps:
  - uses: actions/checkout@v6
  - uses: CargoSense/setup-elixir-project@v1
  - run: mix test
```

The `otp-version` and `elixir-version` inputs are optional and, if not set, default to versions specified in an [asdf](https://asdf-vm.com) `.tool-versions` file located in the root of your project. Refer to [asdf's Configuration documentation](https://asdf-vm.com/manage/configuration.html#tool-versions) for more on this file's format.

> [!IMPORTANT]
> When defaulting to a `.tool-versions` file, strict version matching is enabled and passed to the [setup-beam](https://github.com/erlef/setup-beam) Action. You may otherwise take advantage of setup-beam's loose version matching. Consult that project's documentation for up-to-date version-matching capabilities.

## Acknowledgments

Significant portions of this project's Action code was derived from [Tyler Young](https://github.com/s3cur3)'s [ultimate-elixir-ci](https://github.com/felt/ultimate-elixir-ci) repository. Check out their excellent article, [Taking Hashrocket's "Ultimate Elixir CI" to the next level](https://felt.com/blog/hashrocket-ultimate-elixir-to-the-next-level).

This Action also relies on [The Erlang Ecosystem Foundation](https://github.com/erlef)'s [setup-beam](https://github.com/erlef/setup-beam) project.

## License

This project is freely available under the [MIT License](https://opensource.org/license/MIT).
