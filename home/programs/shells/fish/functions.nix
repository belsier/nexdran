{ config, pkgs, ... }:

{
  programs.fish.functions = {
    current_branch.body = ''
      git symbolic-ref --short HEAD
    '';

    current_repository.body = ''
      set ref (git symbolic-ref HEAD 2> /dev/null); or \
      set ref (git rev-parse --short HEAD 2> /dev/null); or return
      echo (git remote -v | cut -d':' -f 2)
    '';

    # Pretty log messages
    _git_log_prettily.body = ''
      if ! [ -z $1 ]; then
        git log --pretty=$1
      end
    '';

    gdv.body = ''
      git diff -w $argv | view -
    '';

  };
}