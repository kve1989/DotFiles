local status,dracula = pcall(require, "dracula")
if (not status) then return end

dracula.setup({
  -- set italic comment
  italic_comment = true,
  -- use transparent background
  transparent_bg = true
})

dracula.load()
