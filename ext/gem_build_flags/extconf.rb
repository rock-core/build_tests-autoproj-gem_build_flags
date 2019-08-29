require "mkmf"

raise "test_flag not set to 'foobar'" unless with_config("testflag") == "foobar"
create_makefile("gem_build_flags/gem_build_flags")
