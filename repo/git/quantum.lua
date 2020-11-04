package = {
  name = "git",
  version = "2.9.5",
  source = "https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.9.5.tar.xz",
  git = false
}

function build()
	make()
end

function install()
  quantum_install("pfetch", "a4bea37ecb9a3fb5c0c8ef18c2f7eeaf8ccbcfec91f72f3bccfc6bf72a3e3902")
end
