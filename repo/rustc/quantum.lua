package = {
    name = "rustc",
    version = "source",
    source = "https://github.com/rust-lang/rust.git",
    git = true
}

dependencies = {
    "python"
}

function build()
    os.execute("cp config.toml.example config.toml")
    os.execute("sed -i 's/\/usr\/local/"+install_dir+"/gI' config.toml")
    os.execute("./configure")
    os.execute("./x.py build")
end

function install()
    os.execute("./x.py install")
end