package = {
  name = "st",
  version = "source",
  source = "https://git.suckless.org/st",
  git = true
}

function build()
   make()
end

function install()
  quantum_install("st")
end
