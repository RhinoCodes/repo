package = {
  name = "neofetch",
  version = "source",
  source = "https://github.com/dylanaraps/neofetch.git",
  git = true
}

dependencies = {
  "pfetch"
}

function install()
  quantum_install("neofetch")
end
