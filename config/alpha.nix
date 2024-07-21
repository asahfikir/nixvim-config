{
  plugins.alpha =
    let
      nixFlake = [
        "                                                       "
        "        d8888 8888888888      888b    888 ooo          "
        "       d88888 888             8888b   888 ooo          "
        "      d88P888888              88888b  888              "
        "     d88P 888 8888888         888Y88b 888 ooo 888  888 "
        "    d88P  888 888             888 Y88b888 ooo `Y8bd8P' "
        "   d88P   888 888      888888 888  Y88888 ooo   X88K   "
        "  d8888888888 888             888   Y8888 ooo .d8xx8b. "
        " d88P     888 888             888    Y888 ooo 888  888 "
        "                                                       "
        " ===================================================== "
        "                git@github.com:asahfikir               "
        " ===================================================== "
      ];
    in
    {
      enable = true;
      layout = [
        {
          type = "padding";
          val = 4;
        }
        {
          opts = {
            hl = "AlphaHeader";
            position = "center";
          };
          type = "text";
          val = nixFlake;
        }
        {
          type = "padding";
          val = 2;
        }
        {
          type = "group";
          val =
            let
              mkButton = shortcut: cmd: val: hl: {
                type = "button";
                inherit val;
                opts = {
                  inherit hl shortcut;
                  keymap = [
                    "n"
                    shortcut
                    cmd
                    { }
                  ];
                  position = "center";
                  cursor = 0;
                  width = 40;
                  align_shortcut = "right";
                  hl_shortcut = "Keyword";
                };
              };
            in
            [
              (
                mkButton
                  "f"
                  "<CMD>Telescope find_files<CR>"
                  "🔍 Find File"
                  "Operator"
              )
              (
                mkButton
                  "q"
                  "<CMD>qa<CR>"
                  "💣 Quit Neovim"
                  "String"
              )
            ];
        }
        {
          type = "padding";
          val = 2;
        }
        {
          opts = {
            hl = "GruvboxBlue";
            position = "center";
          };
          type = "text";
          val = "https://github.com/asahfikir/nixvim-config";
        }
      ];
    };
}