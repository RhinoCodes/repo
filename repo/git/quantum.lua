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
  os.execute("mkdir -p ~/quantum-lua/bindir/git/2.9.5/bin  ~/quantum-lua/bindir/git/2.9.5/lib64  ~/quantum-lua/bindir/git/2.9.5/libexec  ~/quantum-lua/bindir/git/2.9.5/share")
  os.execute("make install prefix=~/quantum-lua/bindir/git/2.9.5", 1)
end
