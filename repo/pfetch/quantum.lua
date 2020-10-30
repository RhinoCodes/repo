package = {
  name = "pfetch",
  version = "source",
  source = "https://github.com/dylanaraps/pfetch/archive/0.6.0.tar.gz",
  git = false
}

function install()
  quantum_install("pfetch", "6f8d21d7d2196e2aafb8c00c6d79f20c8d6373026eac6f43891bced61f2848eddee1f748a5df90cdf95c5db5eecbc0c933f0ac6625f263bae9e2df51382d8f2c")
end
