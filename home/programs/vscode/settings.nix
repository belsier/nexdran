{ config, pkgs, ... }:

with config.lib; {

  ###############################################
  ################### EDITOR ####################
  ###############################################

  "editor.copyWithSyntaxHighlighting" = true;
  "editor.cursorSmoothCaretAnimation" = true;
  "editor.cursorStyle" = "line";
  "editor.defaultFormatter" = "esbenp.prettier-vscode";
  "editor.detectIndentation" = false;
  "editor.fontFamily" = "Iosevka";
  "editor.fontSize" = 14;
  "editor.fontLigatures" = true;
  "editor.formatOnSave" = true;
  "editor.insertSpaces" = true;
  "editor.lineNumbers" = "on";
  "editor.minimap.enabled" = false;
  "editor.renderIndentGuides" = true;
  "editor.renderWhitespace" = "boundary";
  "editor.showDeprecated" = false;
  "editor.suggestSelection" = "first";
  "editor.tabSize" = 2;
  "editor.wordSeparators" = "/\\()\"' = .;<>~!@#$%^&*|+=[]{}`?-";
  "editor.wordWrap" = "off";


  ###############################################
  ################## EXPLORER ###################
  ###############################################

  "explorer.confirmDragAndDrop" = false;
  "explorer.confirmDelete" = false;
  "explorer.compactFolders" = false;


  ###############################################
  ################## WORKBENCH ##################
  ###############################################

  "breadcrumbs.enabled" = true;
  "workbench.activityBar.visible" = true;
  "workbench.colorTheme" = "Dracula";
  "workbench.iconTheme" = "vscode-great-icons";
  "workbench.settings.editor" = "json";
  "workbench.sideBar.location" = "right";
  "workbench.startupEditor" = "none";
  "workbench.statusBar.visible" = true;
  "workbench.tips.enabled" = true;


  ###############################################
  #################### FILES ####################
  ###############################################

  "files.autoSaveDelay" = 1500;
  # "files.autoSave" = "afterDelay";
  "files.autoSave" = "off";
  "files.simpleDialog.enable" = false;
  "files.trimTrailingWhitespace" = true;

  "files.exclude" = {
    "**/*.hi" = true;
    "**/*.o" = true;
    "**/*xmonad-x86_64-linux" = true;
    "**/*xmonad.errors" = true;
    "**/.classpath" = true;
    "**/.project" = true;
    "**/.settings" = true;
    "**/.vscode" = true;
    "**/.factorypath" = true;
  };

  "emmet.includeLanguages" = {
    "javascript" = "javascriptreact";
  };


  ###############################################
  ################### PARSERS ###################
  ###############################################

  ################### PRETTIER ###################

  "prettier.semi" = false;
  "prettier.printWidth" = 80;
  "prettier.tabWidth" = 2;
  "[javascript]" = {
    "editor.defaultFormatter" = "esbenp.prettier-vscode";
  };


  ###############################################
  ################## LANGUAGES ##################
  ###############################################

  "javascript.updateImportsOnFileMove.enabled" = "always";
  "typescript.validate.enable" = false;

  ################## MARKDOWN ###################

  "[markdown]" = {
    "editor.formatOnSave" = true;
    "editor.quickSuggestions" = false;
    "editor.minimap.enabled" = true;
  };


  ###############################################
  ################## TERMINAL ###################
  ###############################################

  "terminal.integrated.fontSize" = 12;
  "terminal.integrated.fontFamily" = "Fira Code";


  ###############################################
  ################### REMOTE ####################
  ###############################################

  "remote.SSH.useLocalServer" = false;
  "remote.SSH.remotePlatform" = {
    "endeavour" = "linux";
  };


  ###############################################
  ##################### VIM #####################
  ###############################################

  "keyboard.dispatch" = "keyCode";
  "vim.easymotion" = true;
  "vim.incsearch" = true;
  "vim.useSystemClipboard" = true;
  "vim.useCtrlKeys" = true;
  "vim.hlsearch" = true;
  "vim.leader" = "<space>";
  "vim.handleKeys" = {
    "<C-a>" = false;
    "<C-b>" = false;
    "<C-k>" = false;
    "<C-c>" = false;
    "<C-x>" = false;
    "<C-v>" = false;
    "<C-w>" = false;
    "<C-o>" = false;
  };
  "vim.insertModeKeyBindings" = [
    {
      "before" = ["j" "j"];
      "after" = ["<Esc>"];
    }
  ];

  ###############################################
  ################### GENERAL ###################
  ###############################################

  "update.mode" = "manual";
  "window.zoomLevel" = 0;
}