workflow "Publish to PyPI-Test" {
  on = "release"
  resolves = ["Publish to PyPI"]
}

action "Publish to PyPI" {
  uses = "willbarton/pypi-publish-action@master"
  secrets = ["PYPI_USERNAME", "PYPI_PASSWORD"]
}
