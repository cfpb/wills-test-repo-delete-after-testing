workflow "Publish to PyPI-Test" {
  on = "release"
  resolves = ["Publish to PyPI"]
}

action "Publish to PyPI" {
  uses = "willbarton/pypi-publish-action@master"
  secrets = ["TWINE_USERNAME", "TWINE_PASSWORD"]
}
