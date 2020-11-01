-- SHHHH, this isn't stock st because stock is ugly
-- We use the uniboomer's st

package = {
  name = "st",
  version = "source",
  source = "https://github.com/LukeSmithxyz/st.git",
  git = true
}

function build()
   make()
   os.execute("tic -sx st.info")
end

function install()
  quantum_install("st")
end
