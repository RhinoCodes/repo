package = {
  name = "pfetch",
  version = "0.6.0",
  source = "https://github.com/dylanaraps/pfetch/archive/0.6.0.tar.gz",
  git = false
}

function install()
  quantum_install("*", "ca26517d70b63f2766386108e3e491d69d3ab21d49fde3fc7da2b57b329a19ad87df7ff058b9117ed3f75a8fe6f36e48d55e456d31afc7a8b54ad2c7b635a707")
end
