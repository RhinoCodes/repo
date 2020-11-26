package = {
  name = "bash",
  version = "5.0",
  source = "https://mirrors.tripadvisor.com/gnu/bash/bash-5.0.tar.gz",
  checksum = "bb4519f06e278f271d08722b531e49d2e842cc3e0b02a6b3eee422e2efcb5b6226111af43f5e5eae56beb85ac8bfebcd6a4aacbabb8f609e529aa4d571890864",
  git = false
}

function build()
  os.execute("./configure")
  make()
end

function install()
  quantum_install("bash", false)
end
