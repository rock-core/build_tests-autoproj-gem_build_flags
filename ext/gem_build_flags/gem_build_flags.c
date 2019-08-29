#include "gem_build_flags.h"

VALUE rb_mGemBuildFlags;

void
Init_gem_build_flags(void)
{
  rb_mGemBuildFlags = rb_define_module("GemBuildFlags");
}
