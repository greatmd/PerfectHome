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

   },

   # NIAGARA-2
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


   },

  );
