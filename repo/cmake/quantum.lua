package = {
    name = "cmake",
    version = "3.9.1",
    source = "https://www.cmake.org/files/v3.19/cmake-3.19.1.tar.gz",
    git = false
}

function build()
    os.execute("./bootstrap")
    make()
end

function install()
    os.execute("make install DESTDIR=" .. install_dir .. "/bindir/cmake/3.9.1")
    quantum_install("usr/local/bin/*")
end