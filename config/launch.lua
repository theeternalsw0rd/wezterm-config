local platform = require('utils.platform')

local options = {
   default_prog = {},
   launch_menu = {}
}

if platform.is_win then
   options.default_prog = { 'pwsh', '-NoLogo' }
   options.launch_menu = {
      { label = 'PowerShell Core', args = { 'pwsh', '-NoLogo' } },
      { label = 'PowerShell Desktop', args = { 'powershell' } },
      { label = 'Command Prompt', args = { 'cmd' } },
      { label = 'Nushell', args = { 'nu' } },
      { label = 'Cygwin', args = { 'C:\\cygwin64\\bin\\fish.exe', '--login', '-i' } },
      { label = 'UCRT64 / MSYS2', args = { 'msys2_shell.cmd', '-use-full-path', '-defterm', '-here', '-no-start', '-ucrt64', '-shell', 'fish' } },
      { label = 'MSYS / MSYS2', args = { 'msys2_shell.cmd', '-use-full-path', '-defterm', '-here', '-no-start', '-msys', '-shell', 'fish' } },
   }
elseif platform.is_mac then
   options.default_prog = { 'fish', '-l' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      { label = 'Fish', args = { 'fish', '-l' } },
      { label = 'Nushell', args = { '/opt/homebrew/bin/nu', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
elseif platform.is_linux then
   options.default_prog = { 'fish', '-l' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      { label = 'Fish', args = { 'fish', '-l' } },
      { label = 'Nushell', args = { 'nu', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
end

return options
