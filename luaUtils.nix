{
  toLua = str: ''
    lua << EOF
    ${str}
    EOF
  '';
  toLuaFile = file: ''
    lua << EOF
    ${builtins.readFile file}
    EOF
  '';
  luaColors = colors: builtins.concatStringsSep "\n" (builtins.attrValues (builtins.mapAttrs (name: value: "vim.g['colors_${name}'] = ${builtins.toJSON value}") colors.outputs.colors));
  luaColorsOpaque = colors: builtins.concatStringsSep "\n" (builtins.attrValues (builtins.mapAttrs (name: value: "vim.g['colors_${name}_opaque'] = ${builtins.toJSON value}") colors.outputs.colors_opaque));
}
