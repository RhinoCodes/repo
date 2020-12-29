package = {
    name = "python",
    version = "3.9.1",
    source = "https://www.python.org/ftp/python/3.9.1/Python-3.9.1.tar.xz",
    git = false
}

function build()
    os.execute("./configure --enable-optimizations")
    make()
end

function install()
    os.execute("make DESTDIR=" .. install_dir)
    quantum_install("usr/local/bin/*", true)
end