require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!

if vim.fn.has("win32") == 1 then
  o.shell = 'pwsh' or 'powershell' or 'cmd'
  if o.shell == 'pwsh' then
    o.shellcmdflag = '-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();'
    -- use -NoProfile to stop loading pwsh profiles
    o.shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait"
    o.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
    o.shellquote = ""
    o.shellxquote = ""
  end
else
  o.shell = 'fish' or 'bash'
end
