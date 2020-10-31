package = {
  name = "st",
  version = "source",
  source = "https://git.suckless.org/st",
  git = true
}

function install()
  make()
  quantum_install("st")
end
