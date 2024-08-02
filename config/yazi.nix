{ pkgs, ... }:
{

  extraPlugins = [ pkgs.vimPlugins.yazi-nvim ];

  keymaps = [
    {
      mode = "n";
      key = "<leader>E";
      action.__raw = ''
        function()
          require('yazi').yazi()
        end
      '';
      options = {
        desc = "Yazi toggle";
        silent = true;
      };
    }
  ];
}
