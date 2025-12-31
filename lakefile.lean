import Lake
open Lake DSL

package minefield where
  precompileModules := true

require terminus from git "https://github.com/nathanial/terminus" @ "v0.0.1"
require crucible from git "https://github.com/nathanial/crucible" @ "v0.0.1"

@[default_target]
lean_lib Minefield where
  roots := #[`Minefield]

lean_exe minefield where
  root := `Main

lean_lib Tests where
  roots := #[`Tests]

@[test_driver]
lean_exe tests where
  root := `Tests.Main
