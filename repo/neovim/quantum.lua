package = {
  name = "neovim",
  version = "source",
  source = "https://github.com/neovim/neovim.git",
  git = true
}

function build()
  make()
end

function install()
  quantum_install("build/bin/nvim")
end
