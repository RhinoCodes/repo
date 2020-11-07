package = {
  name = "vim",
  version = "source",
  source = "https://github.com/vim/vim.git",
  git = true
}

function build()
  make()
end

function install()
  quantum_install("src/nvim")
end
