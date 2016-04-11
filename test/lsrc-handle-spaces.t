  $ . "$TESTDIR/helper.sh"

Should list the contents of ~/.dotfiles

  $ touch .dotfiles/filenospaces
  > touch .dotfiles/file\ with\ spaces

  $ lsrc filenospaces file\ with\ spaces
  /*/.filenospaces:/*/.dotfiles/filenospaces (glob)
  /*/.file with spaces:/*/.dotfiles/file with spaces (glob)

  $ lsrc
  /*/.file with spaces:/*/.dotfiles/file with spaces (glob)
  /*/.filenospaces:/*/.dotfiles/filenospaces (glob)
