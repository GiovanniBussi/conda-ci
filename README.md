# conda-build-ci
Easily install conda-build on travis-ci (WIP) 

Supports native Linux x86_64 and aarch64 (ARM64), and macOS Intel and Apple
Silicon. The installer architecture is selected from `uname -m`; Linux `arm64`
is accepted as an alias for `aarch64`. Unsupported architectures are rejected.
GitHub Actions includes a native `ubuntu-24.04-arm` build/test job.
