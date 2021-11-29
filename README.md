Takes a version string generated by [make-time-based-version-string](https://github.com/sandersaares-actions/make-time-based-version-string), and transforms it to a NuGet-compatible format.

# Example workflow

```yaml
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    # First make the version string
    - id: make_version_string
      uses: sandersaares-actions/make-time-based-version-string@main
    # Then convert the version string to NuGet format
    - uses: sandersaares-actions/make-time-based-nuget-version-string@main
      with:
        versionstring: ${{ steps.make_version_string.outputs.VERSION_STRING }}

```

# Mandatory parameters

`versionstring` - the original version string generated.

# Outputs

`NUGET_VERSION_STRING` - the resulting NuGet-formatted version string