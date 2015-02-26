# iojs-cookbook

This cookbook currently only installs IO.js version 1.3.0 from binary.

There is currently no logic to check the latest version and install that.
There is no logic to make sure the right version is downloaded for your platform.

This is a very stupid recipe but it does the job us. If you want to use this either add a PR with an implementation or a PR with your platform to the .kitchen.yml and I will try to make the tests pass. If you want to have any other functionality in this and can write a test I will try to make it pass.

If anyone wants commit rights on this just ping me on the Github repo.

## Supported Platforms

Linux x64

## Usage

### iojs::default

Include `iojs` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[iojs::default]"
  ]
}
```

## License and Authors

Author:: Chris Manson (chris@bloo.ie)
