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
    os.execute("make install DESTDIR=" .. install_dir)
    quantum_install("usr/local/bin/cmake", true)
    quantum_install("usr/local/bin/ctest", true)
    quantum_install("usr/local/bin/cpack", true)
    quantum_install("usr/local/bin/ccmake", true)
end