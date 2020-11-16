package = {
  name = "neofetch",
  version = "source",
  source = "https://github.com/dylanaraps/neofetch.git",
  git = true
}

description = "A command-line system information tool written in bash 3.2+"

function install()
  quantum_install("neofetch")
end
