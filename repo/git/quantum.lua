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
  os.execute("make install prefix=~/quantum-lua/bindir/lua/2.9.5")
end
