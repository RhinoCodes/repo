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
  os.execute("mkdir -p "+install_dir+"/bindir/git/2.9.5/bin  "+install_dir+"/bindir/git/2.9.5/lib64  "+install_dir+"/bindir/git/2.9.5/libexec  "+install_dir+"/bindir/git/2.9.5/share")
  os.execute("make install prefix="+install_dir+"/quantum-lua/bindir/git/2.9.5")
  quantum_install("bin/git")
end
