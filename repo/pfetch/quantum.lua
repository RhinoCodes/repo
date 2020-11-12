package = {
  name = "pfetch",
  version = "0.6.0",
  source = "https://github.com/dylanaraps/pfetch/archive/0.6.0.tar.gz",
  git = false,
  "neofetch"
}

function install()
  quantum_install("pfetch", false)
end
-- I use pfetch as a testing ground - so if it doesn't install, you know why!
