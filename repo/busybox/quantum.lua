package = {
    name = "busybox",
    version = "1.32.0",
    source = "https://busybox.net/downloads/busybox-1.32.0.tar.bz2",
    git = false,
    root = true
}

function build()
    os.execute("make defconfig")
    make()
end

function install()
    os.execute("make CONFIG_PREFIX=" .. install_dir .. " install")
    os.execute("mkdir -p " .. root .. "/{bin,sbin,usr,usr/bin,usr/sbin}")
    print(root)
    os.execute("ln -s " .. install_dir .. "/bin/* " .. root .. "/bin")
    os.execute("ln -s " .. install_dir .. "/sbin/* " .. root .. "/sbin")
    os.execute("ln -s " .. install_dir .. "/usr/sbin/* " .. root .. "/usr/sbin")
    os.execute("ln -s " .. install_dir .. "/usr/bin/* " .. root .. "/usr/bin")
    os.execute("ln -s " .. install_dir .. "/linuxrc " .. root .. "/linuxrc")
end

function uninstall()
    os.execute("unlink " .. root .. "/linuxrc")
    os.execute("rm -rf " .. install_dir)
    os.execute("find " .. root .. "{/bin,/sbin,/usr/bin,/usr/sbin} -xtype l -delete")
end
