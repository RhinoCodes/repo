package = {
    name = "linux",
    version= "5.4.77",
    source = "https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.77.tar.xz",
    git = false
}

function build()
    os.execute("make x86_64-defconfig")
    make()
end

function install()
    os.execute("make INSTALL_MOD_PATH=" .. install_dir .. "/bindir/linux/5.4.77" .. " modules_install" )
end 
