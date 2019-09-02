require "mkmf"

raise "with-toplevel-init not set" unless with_config("toplevel-init") == "success"
raise "with-package_set-init not set" unless with_config("package_set-init") == "success"
raise "with-package_set-packages not set" unless with_config("package_set-packages") == "success"
raise "with-package_set-overrides not set" unless with_config("package_set-overrides") == "success"
create_makefile("gem_build_flags/gem_build_flags")
