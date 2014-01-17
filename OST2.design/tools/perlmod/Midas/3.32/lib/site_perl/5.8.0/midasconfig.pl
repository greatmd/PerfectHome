# ========== Copyright Header Begin ==========================================
# 
# OpenSPARC T2 Processor File: midasconfig.pl
# Copyright (C) 1995-2007 Sun Microsystems, Inc. All Rights Reserved
# 4150 Network Circle, Santa Clara, California 95054, U.S.A.
#
# * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER. 
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 2 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#
# For the avoidance of doubt, and except that if any non-GPL license 
# choice is available it will apply instead, Sun elects to use only 
# the General Public License version 2 (GPLv2) at this time for any 
# software where a choice of GPL license versions is made 
# available with the language indicating that GPLv2 or any later version 
# may be used, or where a choice of which version of the GPL is applied is 
# otherwise unspecified. 
#
# Please contact Sun Microsystems, Inc., 4150 Network Circle, Santa Clara, 
# CA 95054 USA or visit www.sun.com if you need additional information or 
# have any questions. 
# 
# ========== Copyright Header End ============================================
# -*- perl -*-

our %PROJ_CONFIG =
  (

   # NIAGARA-1
   BW =>
   {
    mmu_type     => 'niagara',
    ttefmt       => 'sun4v',
    tsbtagfmt    => 'tagaccess',
    default_radix => 'decimal',

    # Number of assemblers to run in parallel
    build_threads => 3,
    # Erase build directory on success if this invocation created it
    cleanup => 1,
    # Erase build directory on success (if cleanup is set), even if
    # it wasn't created by this invocation
    force_cleanup => 0,
    # Build the diag, even if it looks like we have the same input and
    # same args as last time.
    force_build => 0,

    # If set, allow a TSB to have a collision (two addresses mapping
    # to same TSB pointer
    allow_tsb_conflicts => 0,
    # If set, don't cause fatal error if section is empty
    allow_empty_sections => 0,
    # If set, do not generate a fatal error if an illegal page size is
    # specified
    allow_illegal_page_sizes => 0,
    # If set (and allow_tsb_conflicts), allow the same tag to appear
    # twice in the same tsb.
    allow_duplicate_tags => 0,
    # Allows a TSB base to not be aligned with its size.  Real
    # software will never do this, but who knows about diags
    allow_misaligned_tsb_base => 0,
    # If set, generate all TSBs that are defined, not just the ones
    # being used.
    gen_all_tsbs => 0,
    # If set to zero, do not compress any sections, regardless of the per-
    # section settings
    compress_image => 1,
    # Use backdoor environment mechanism to zero compressed sections
    env_zero => 1,
    # By default, result files in build directory are hard-linked to
    # destination directory.  If this option is set, a copy is done
    # instead.
    copy_products => 0,
    # Use full paths for commands if set.  Relative paths make output
    # more readable, though.
    full_paths => 0,


    # COMMAND OPTIONS.  Note that if no path is given, it picks up tools
    # from the path.

    # Binary to use for goldfinger.
    goldfinger_cmd => 'goldfinger',
    # Minimum allowable version of goldfinger.
    goldfinger_version => '1.07',

    cat_cmd      => 'gcat',
    diff_cmd     => 'diff',
    pal_cmd      => 'pal',
    cpp_cmd      => 'bw_cpp',
    cpp_opt      => ['-B -P'],

    m4_cmd       => 'bw_m4',
    m4_opt       => [],

    as_cmd       => 'g_as',
    as_opt       => ['-xarch=v9b'],

    ld_cmd       => 'g_ld',
    ld_opt       => ['-b elf64-sparc', '-no-warn-mismatch',
		     '--no-check-sections'],

    gcc_cmd      => 'gcc',
    gcc_opt      => ['-m64', '-nostdinc', '-fno-common', '-fno-builtin'],

    perl_cmd     => 'perl',

    # PATH OPTIONS

    cpp_includes => {
		      # from diagroot
		     diagroot => ['verif/diag/assembly/include'],
		     # from directory where midas is run
		     startdir => ['.'],
		     # from build directory
		     builddir => ['.'],
		     # absolute paths
		     abs      => [],
		    },
    cpp_defines  => [ 'GOLDFINGER=1'
		    ],
    m4_includes  => {
		     diagroot => [],
		     startdir => ['.'],
		     builddir => ['.'],
		     abs      => [],
		    },


    link_paths => {
		   diagroot => ['verif/diag'],
		   startdir => ['.'],
		   builddir => [],
		   abs      => [],
		  },

    csrc_includes => {
		      diagroot => ['verif/diag/c'],
		      startdir => ['.'],
		      builddir => [],
		      abs      => [],
		     },

    c_includes => {
		   diagroot => ['verif/diag/c/include'],
		   startdir => ['.'],
		   builddir => ['.'],
		   abs      => [],
		  },
    addphdr_ok => 0,

   },

   # NIAGARA-2
   OpenSparc_N2 =>
   {
    mmu_type     => 'niagara2',
    ttefmt       => 'sun4v',
    tsbtagfmt    => 'tagtarget',

    default_radix => 'decimal',

    # Number of assemblers to run in parallel
    build_threads => 3,
    # Erase build directory on success if this invocation created it
    cleanup => 1,
    # Erase build directory on success (if cleanup is set), even if
    # it wasn't created by this invocation
    force_cleanup => 0,
    # Build the diag, even if it looks like we have the same input and
    # same args as last time.
    force_build => 0,

    # If set, allow a TSB to have a collision (two addresses mapping
    # to same TSB pointer
    allow_tsb_conflicts => 0,
    # If set, don't cause fatal error if section is empty
    allow_empty_sections => 0,
    # If set, do not generate a fatal error if an illegal page size is
    # specified
    allow_illegal_page_sizes => 0,
    # If set (and allow_tsb_conflicts), allow the same tag to appear
    # twice in the same tsb.
    allow_duplicate_tags => 0,
    # Allows a TSB base to not be aligned with its size.  Real
    # software will never do this, but who knows about diags
    allow_misaligned_tsb_base => 0,
    # If set, generate all TSBs that are defined, not just the ones
    # being used.
    gen_all_tsbs => 0,
    # If set to zero, do not compress any sections, regardless of the per-
    # section settings
    compress_image => 1,
    # Backdoor environment mechanism to zero compressed sections is
    # not available in N2
    env_zero => 0,
    # By default, result files in build directory are hard-linked to
    # destination directory.  If this option is set, a copy is done
    # instead.
    copy_products => 0,
    # Use full paths for commands if set.  Relative paths make output
    # more readable, though.
    full_paths => 0,


    # COMMAND OPTIONS.  Note that if no path is given, it picks up tools
    # from the path.

    # Binary to use for goldfinger.
    goldfinger_cmd => 'goldfinger',
    # Minimum allowable version of goldfinger.
    goldfinger_version => '1.07',

    cat_cmd      => 'gcat',
    diff_cmd     => 'diff',
    pal_cmd      => 'pal',
    cpp_cmd      => 'bw_cpp',
    cpp_opt      => ['-B -P -traditional-cpp'],

    m4_cmd       => 'bw_m4',
    m4_opt       => [],

    as_cmd       => 'g_as',
    as_opt       => ['-xarch=v9b'],

    ld_cmd       => 'g_ld',
    ld_opt       => ['-b elf64-sparc', '-no-warn-mismatch',
		     '--no-check-sections'],

    gcc_cmd      => 'gcc',
    gcc_opt      => ['-m64', '-nostdinc', '-fno-common', '-fno-builtin'],

    perl_cmd     => 'perl',

    # PATH OPTIONS

    cpp_includes => {
		      # from diagroot
		     diagroot => ['verif/diag/assembly/include'],
		     # from directory where midas is run
		     startdir => ['.'],
		     # from build directory
		     builddir => ['.'],
		     # absolute paths
		     abs      => [],
		    },
    cpp_defines  => [ 'GOLDFINGER=1'
		    ],
    m4_includes  => {
		     diagroot => [],
		     startdir => ['.'],
		     builddir => ['.'],
		     abs      => [],
		    },


    link_paths => {
		   diagroot => ['verif/diag'],
		   startdir => ['.'],
		   builddir => [],
		   abs      => [],
		  },

    csrc_includes => {
		      diagroot => ['verif/diag/c'],
		      startdir => ['.'],
		      builddir => [],
		      abs      => [],
		     },

    c_includes => {
		   diagroot => ['verif/diag/c/include'],
		   startdir => ['.'],
		   builddir => ['.'],
		   abs      => [],
		  },

    addphdr_ok => 1,
   },

   N2 =>
   {
    mmu_type     => 'niagara2',
    ttefmt       => 'sun4v',
    tsbtagfmt    => 'tagtarget',

    default_radix => 'decimal',

    # Number of assemblers to run in parallel
    build_threads => 3,
    # Erase build directory on success if this invocation created it
    cleanup => 1,
    # Erase build directory on success (if cleanup is set), even if
    # it wasn't created by this invocation
    force_cleanup => 0,
    # Build the diag, even if it looks like we have the same input and
    # same args as last time.
    force_build => 0,

    # If set, allow a TSB to have a collision (two addresses mapping
    # to same TSB pointer
    allow_tsb_conflicts => 0,
    # If set, don't cause fatal error if section is empty
    allow_empty_sections => 0,
    # If set, do not generate a fatal error if an illegal page size is
    # specified
    allow_illegal_page_sizes => 0,
    # If set (and allow_tsb_conflicts), allow the same tag to appear
    # twice in the same tsb.
    allow_duplicate_tags => 0,
    # Allows a TSB base to not be aligned with its size.  Real
    # software will never do this, but who knows about diags
    allow_misaligned_tsb_base => 0,
    # If set, generate all TSBs that are defined, not just the ones
    # being used.
    gen_all_tsbs => 0,
    # If set to zero, do not compress any sections, regardless of the per-
    # section settings
    compress_image => 1,
    # Backdoor environment mechanism to zero compressed sections is
    # not available in N2
    env_zero => 0,
    # By default, result files in build directory are hard-linked to
    # destination directory.  If this option is set, a copy is done
    # instead.
    copy_products => 0,
    # Use full paths for commands if set.  Relative paths make output
    # more readable, though.
    full_paths => 0,


    # COMMAND OPTIONS.  Note that if no path is given, it picks up tools
    # from the path.

    # Binary to use for goldfinger.
    goldfinger_cmd => 'goldfinger',
    # Minimum allowable version of goldfinger.
    goldfinger_version => '1.07',

    cat_cmd      => 'gcat',
    diff_cmd     => 'diff',
    pal_cmd      => 'pal',
    cpp_cmd      => 'bw_cpp',
    cpp_opt      => ['-B -P -traditional-cpp'],

    m4_cmd       => 'bw_m4',
    m4_opt       => [],

    as_cmd       => 'g_as',
    as_opt       => ['-xarch=v9b'],

    ld_cmd       => 'g_ld',
    ld_opt       => ['-b elf64-sparc', '-no-warn-mismatch',
		     '--no-check-sections'],

    gcc_cmd      => 'gcc',
    gcc_opt      => ['-m64', '-nostdinc', '-fno-common', '-fno-builtin'],

    perl_cmd     => 'perl',

    # PATH OPTIONS

    cpp_includes => {
		      # from diagroot
		     diagroot => ['verif/diag/assembly/include'],
		     # from directory where midas is run
		     startdir => ['.'],
		     # from build directory
		     builddir => ['.'],
		     # absolute paths
		     abs      => [],
		    },
    cpp_defines  => [ 'GOLDFINGER=1'
		    ],
    m4_includes  => {
		     diagroot => [],
		     startdir => ['.'],
		     builddir => ['.'],
		     abs      => [],
		    },


    link_paths => {
		   diagroot => ['verif/diag'],
		   startdir => ['.'],
		   builddir => [],
		   abs      => [],
		  },

    csrc_includes => {
		      diagroot => ['verif/diag/c'],
		      startdir => ['.'],
		      builddir => [],
		      abs      => [],
		     },

    c_includes => {
		   diagroot => ['verif/diag/c/include'],
		   startdir => ['.'],
		   builddir => ['.'],
		   abs      => [],
		  },

    addphdr_ok => 1,
   },

   # NIAGARA-2plus
   NP =>
   {
    mmu_type     => 'niagara2',
    ttefmt       => 'sun4v',
    tsbtagfmt    => 'tagtarget',

    default_radix => 'decimal',

    # Number of assemblers to run in parallel
    build_threads => 3,
    # Erase build directory on success if this invocation created it
    cleanup => 1,
    # Erase build directory on success (if cleanup is set), even if
    # it wasn't created by this invocation
    force_cleanup => 0,
    # Build the diag, even if it looks like we have the same input and
    # same args as last time.
    force_build => 0,

    # If set, allow a TSB to have a collision (two addresses mapping
    # to same TSB pointer
    allow_tsb_conflicts => 0,
    # If set, don't cause fatal error if section is empty
    allow_empty_sections => 0,
    # If set, do not generate a fatal error if an illegal page size is
    # specified
    allow_illegal_page_sizes => 0,
    # If set (and allow_tsb_conflicts), allow the same tag to appear
    # twice in the same tsb.
    allow_duplicate_tags => 0,
    # Allows a TSB base to not be aligned with its size.  Real
    # software will never do this, but who knows about diags
    allow_misaligned_tsb_base => 0,
    # If set, generate all TSBs that are defined, not just the ones
    # being used.
    gen_all_tsbs => 0,
    # If set to zero, do not compress any sections, regardless of the per-
    # section settings
    compress_image => 1,
    # Backdoor environment mechanism to zero compressed sections is
    # not available in NP
    env_zero => 0,
    # By default, result files in build directory are hard-linked to
    # destination directory.  If this option is set, a copy is done
    # instead.
    copy_products => 0,
    # Use full paths for commands if set.  Relative paths make output
    # more readable, though.
    full_paths => 0,


    # COMMAND OPTIONS.  Note that if no path is given, it picks up tools
    # from the path.

    # Binary to use for goldfinger.
    goldfinger_cmd => 'goldfinger',
    # Minimum allowable version of goldfinger.
    goldfinger_version => '1.07',

    cat_cmd      => 'gcat',
    diff_cmd     => 'diff',
    pal_cmd      => 'pal',
    cpp_cmd      => 'bw_cpp',
    cpp_opt      => ['-B -P -traditional-cpp'],

    m4_cmd       => 'bw_m4',
    m4_opt       => [],

    as_cmd       => 'g_as',
    as_opt       => ['-xarch=v9b'],

    ld_cmd       => 'g_ld',
    ld_opt       => ['-b elf64-sparc', '-no-warn-mismatch',
		     '--no-check-sections'],

    gcc_cmd      => 'gcc',
    gcc_opt      => ['-m64', '-nostdinc', '-fno-common', '-fno-builtin'],

    perl_cmd     => 'perl',

    # PATH OPTIONS

    cpp_includes => {
		      # from diagroot
		     diagroot => ['verif/diag/assembly/include'],
		     # from directory where midas is run
		     startdir => ['.'],
		     # from build directory
		     builddir => ['.'],
		     # absolute paths
		     abs      => [],
		    },
    cpp_defines  => [ 'GOLDFINGER=1'
		    ],
    m4_includes  => {
		     diagroot => [],
		     startdir => ['.'],
		     builddir => ['.'],
		     abs      => [],
		    },


    link_paths => {
		   diagroot => ['verif/diag'],
		   startdir => ['.'],
		   builddir => [],
		   abs      => [],
		  },

    csrc_includes => {
		      diagroot => ['verif/diag/c'],
		      startdir => ['.'],
		      builddir => [],
		      abs      => [],
		     },

    c_includes => {
		   diagroot => ['verif/diag/c/include'],
		   startdir => ['.'],
		   builddir => ['.'],
		   abs      => [],
		  },


    addphdr_ok => 1,
   },

   # JUPITER, NIAGARA-2 Clone
   JUPITER =>
   {
    mmu_type     => 'niagara2',
    ttefmt       => 'sun4v',
    tsbtagfmt    => 'tagtarget',

    default_radix => 'decimal',

    # Number of assemblers to run in parallel
    build_threads => 3,
    # Erase build directory on success if this invocation created it
    cleanup => 1,
    # Erase build directory on success (if cleanup is set), even if
    # it wasn't created by this invocation
    force_cleanup => 0,
    # Build the diag, even if it looks like we have the same input and
    # same args as last time.
    force_build => 0,

    # If set, allow a TSB to have a collision (two addresses mapping
    # to same TSB pointer
    allow_tsb_conflicts => 0,
    # If set, don't cause fatal error if section is empty
    allow_empty_sections => 0,
    # If set, do not generate a fatal error if an illegal page size is
    # specified
    allow_illegal_page_sizes => 0,
    # If set (and allow_tsb_conflicts), allow the same tag to appear
    # twice in the same tsb.
    allow_duplicate_tags => 0,
    # Allows a TSB base to not be aligned with its size.  Real
    # software will never do this, but who knows about diags
    allow_misaligned_tsb_base => 0,
    # If set, generate all TSBs that are defined, not just the ones
    # being used.
    gen_all_tsbs => 0,
    # If set to zero, do not compress any sections, regardless of the per-
    # section settings
    compress_image => 1,
    # Backdoor environment mechanism to zero compressed sections is
    # not available in N2
    env_zero => 0,
    # By default, result files in build directory are hard-linked to
    # destination directory.  If this option is set, a copy is done
    # instead.
    copy_products => 0,
    # Use full paths for commands if set.  Relative paths make output
    # more readable, though.
    full_paths => 0,


    # COMMAND OPTIONS.  Note that if no path is given, it picks up tools
    # from the path.

    # Binary to use for goldfinger.
    goldfinger_cmd => 'goldfinger',
    # Minimum allowable version of goldfinger.
    goldfinger_version => '1.07',

    cat_cmd      => 'gcat',
    diff_cmd     => 'diff',
    pal_cmd      => 'pal',
    cpp_cmd      => 'bw_cpp',
    cpp_opt      => ['-B -P -traditional-cpp'],

    m4_cmd       => 'bw_m4',
    m4_opt       => [],

    as_cmd       => 'g_as',
    as_opt       => ['-xarch=v9b'],

    ld_cmd       => 'g_ld',
    ld_opt       => ['-b elf64-sparc', '-no-warn-mismatch',
		     '--no-check-sections'],

    gcc_cmd      => 'gcc',
    gcc_opt      => ['-m64', '-nostdinc', '-fno-common', '-fno-builtin'],

    perl_cmd     => 'perl',

    # PATH OPTIONS

    cpp_includes => {
		      # from diagroot
		     diagroot => ['verif/diag/assembly/include'],
		     # from directory where midas is run
		     startdir => ['.'],
		     # from build directory
		     builddir => ['.'],
		     # absolute paths
		     abs      => [],
		    },
    cpp_defines  => [ 'GOLDFINGER=1'
		    ],
    m4_includes  => {
		     diagroot => [],
		     startdir => ['.'],
		     builddir => ['.'],
		     abs      => [],
		    },


    link_paths => {
		   diagroot => ['verif/diag'],
		   startdir => ['.'],
		   builddir => [],
		   abs      => [],
		  },

    csrc_includes => {
		      diagroot => ['verif/diag/c'],
		      startdir => ['.'],
		      builddir => [],
		      abs      => [],
		     },

    c_includes => {
		   diagroot => ['verif/diag/c/include'],
		   startdir => ['.'],
		   builddir => ['.'],
		   abs      => [],
		  },


    addphdr_ok => 1,
   },

   # KT
   KT =>
   {
    mmu_type     => 'niagara2',
    ttefmt       => 'sun4v',
    tsbtagfmt    => 'tagtarget',

    default_radix => 'decimal',

    # Number of assemblers to run in parallel
    build_threads => 3,
    # Erase build directory on success if this invocation created it
    cleanup => 1,
    # Erase build directory on success (if cleanup is set), even if
    # it wasn't created by this invocation
    force_cleanup => 0,
    # Build the diag, even if it looks like we have the same input and
    # same args as last time.
    force_build => 0,

    # If set, allow a TSB to have a collision (two addresses mapping
    # to same TSB pointer
    allow_tsb_conflicts => 0,
    # If set, don't cause fatal error if section is empty
    allow_empty_sections => 0,
    # If set, do not generate a fatal error if an illegal page size is
    # specified
    allow_illegal_page_sizes => 0,
    # If set (and allow_tsb_conflicts), allow the same tag to appear
    # twice in the same tsb.
    allow_duplicate_tags => 0,
    # Allows a TSB base to not be aligned with its size.  Real
    # software will never do this, but who knows about diags
    allow_misaligned_tsb_base => 0,
    # If set, generate all TSBs that are defined, not just the ones
    # being used.
    gen_all_tsbs => 0,
    # If set to zero, do not compress any sections, regardless of the per-
    # section settings
    compress_image => 1,
    # Backdoor environment mechanism to zero compressed sections is
    # not available in N2
    env_zero => 0,
    # By default, result files in build directory are hard-linked to
    # destination directory.  If this option is set, a copy is done
    # instead.
    copy_products => 0,
    # Use full paths for commands if set.  Relative paths make output
    # more readable, though.
    full_paths => 0,


    # COMMAND OPTIONS.  Note that if no path is given, it picks up tools
    # from the path.

    # Binary to use for goldfinger.
    goldfinger_cmd => 'goldfinger',
    # Minimum allowable version of goldfinger.
    goldfinger_version => '1.07',

    cat_cmd      => 'gcat',
    diff_cmd     => 'diff',
    pal_cmd      => 'pal',
    cpp_cmd      => 'bw_cpp',
    cpp_opt      => ['-B -P -traditional-cpp'],

    m4_cmd       => 'bw_m4',
    m4_opt       => [],

    as_cmd       => 'g_as',
    as_opt       => ['-xarch=v9b'],

    ld_cmd       => 'g_ld',
    ld_opt       => ['-b elf64-sparc', '-no-warn-mismatch',
		     '--no-check-sections'],

    gcc_cmd      => 'gcc',
    gcc_opt      => ['-m64', '-nostdinc', '-fno-common', '-fno-builtin'],

    perl_cmd     => 'perl',

    # PATH OPTIONS

    cpp_includes => {
		      # from diagroot
		     diagroot => ['verif/diag/assembly/include'],
		     # from directory where midas is run
		     startdir => ['.'],
		     # from build directory
		     builddir => ['.'],
		     # absolute paths
		     abs      => [],
		    },
    cpp_defines  => [ 'GOLDFINGER=1'
		    ],
    m4_includes  => {
		     diagroot => [],
		     startdir => ['.'],
		     builddir => ['.'],
		     abs      => [],
		    },


    link_paths => {
		   diagroot => ['verif/diag'],
		   startdir => ['.'],
		   builddir => [],
		   abs      => [],
		  },

    csrc_includes => {
		      diagroot => ['verif/diag/c'],
		      startdir => ['.'],
		      builddir => [],
		      abs      => [],
		     },

    c_includes => {
		   diagroot => ['verif/diag/c/include'],
		   startdir => ['.'],
		   builddir => ['.'],
		   abs      => [],
		  },

    addphdr_ok => 1,

   },

  );
