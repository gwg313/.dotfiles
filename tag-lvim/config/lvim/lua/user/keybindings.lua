local M = {}


M.set_lightspeed_keymaps = function()
  vim.cmd [[
nmap s <Plug>Lightspeed_s
nmap S <Plug>Lightspeed_S
nmap <expr> f reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_f" : "f"
nmap <expr> F reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_F" : "F"
nmap <expr> t reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_t" : "t"
nmap <expr> T reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_T" : "T"
  ]]
end
return M
