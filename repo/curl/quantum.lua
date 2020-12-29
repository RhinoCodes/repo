package = {
    name = "curl",
    version = "7.74.0",
    source = "https://github.com/curl/curl/releases/download/curl-7_74_0/curl-7.74.0.tar.gz",
    git = false
}

function build()
    make()
end

function install()
    os.execute("make install DESTDIR=" .. install_dir)
    quantum_install("usr/local/bin/curl", true)
    quantum_install("usr/local/bin/curl-config", true)
end