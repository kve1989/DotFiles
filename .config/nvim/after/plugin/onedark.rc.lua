local status, n = pcall(require, "onedark")
if (not status) then return end

n.setup({
  style = 'dark', -- dark, darker, warm, warmer
  transparent = true,
  code_style = {
    comments = 'italic'
  }
})

n.load()
