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
  os.execute("mkdir -p " .. install_dir .. "/{bin,lib64,libexec,share}")
  os.execute("make install prefix=" .. install_dir)
  quantum_install("bin/git")
end
