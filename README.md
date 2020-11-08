# Quantum's Package Repository
------------------------------------
## Tutorial
First you need to clone the repo:
`git clone https://github.com/quantum-package-manager/repo.git`
Then you need to change into the repository directory:
`cd repo/repo`
Then make a directory for the package:
`mkdir repo/repo/foo`
Then change into that:
`cd foo`
Then, in your packages directory, make a new file called `quantum.lua`
Now, we define the package:
For a package downloaded from git,
```lua
package = {
  name = "foo",
  version = "source",
  source = "https://foo.bar/foo.git",
  git = true
}
```
For a package downloaded as a tarball,
```lua
package = {
  name = "foo",
  version = "1.2",
  source = "https://foo.bar/foo-1.2.tar.gz",
  git = false
}
```

Now we define the build steps:
```lua
function build()
	make()
end
```
And now the install:
```lua
function install()
  quantum_install("foobar")
end
```

Note: `quantum_install` moves a file to the final directory
Note: To run a shell command use `os.execute("[command]")`
