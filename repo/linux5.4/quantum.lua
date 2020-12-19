package = {
    name = "linux",
    version= "5.4.77",
    source = "https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.77.tar.xz",
    git = false,
    root = true
}

function build()
    os.execute("make x86_64_defconfig")
    make()
end

function install()
    os.execute("make INSTALL_MOD_PATH=" .. install_dir .. modules_install" )
    os.execute("cp -v arch/x86/boot/bzImage " .. install_dir .. "/boot/vmlinuz-5.4.77")
    os.execute("cp -v System.map " .. install_dir .. "/boot/System.map-5.4.77")
    os.execute("cp -v .config " .. install_dir .. "/boot/config-5.4.77")
    os.execute("ln -s " .. install_dir .. "/boot/* /boot/")
    os.execute("ln -s " .. install_dir .. "/lib/modules/5.4.77 /usr/lib/modules/5.4.77")
end 
