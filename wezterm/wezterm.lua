local wezterm = require 'wezterm'
local act = wezterm.action

mb = {
}

for i = 1,99,1 
do 
  table.insert(mb,
  {
    event = { Down = { streak = i, button = 'Middle' } },
    mods = 'NONE',
    action = act.PasteFrom("PrimarySelection")
  })
  table.insert(mb, {
    event = { Down = { streak = i, button = 'Right' } },
       mods = 'NONE',
       action = wezterm.action_callback(function(window, pane)
         local has_selection = window:get_selection_text_for_pane(pane) ~= ''
         if has_selection then
           window:perform_action(
             act.CopyTo 'ClipboardAndPrimarySelection',
             pane
           )
   
           window:perform_action(act.ClearSelection, pane)
         else
           window:perform_action(act.PasteFrom("PrimarySelection"), pane)
         end
       end),
     })
end

return {
  pane_focus_follows_mouse = false,
  mouse_bindings = mb,
--  leader = { key = 'VoidSymbol', timeout_milliseconds = 1000 },
  keys = {
--    {
--      key = 'c',
--      mods = 'CTRL|SHIFT',
--      action = wezterm.action.SpawnCommandInNewTab {
--        args = { 'zsh' },
--        cwd = '~'
--      },
--    },
    {
      key = 't',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.SpawnCommandInNewTab {
        args = { 'zsh' },
        cwd = '~'
      },
    },
    {
      key = 'f',
      mods = 'CTRL',
      action = wezterm.action.TogglePaneZoomState,
    },
--    {
--      key = 'p',
--      mods = 'LEADER',
--      action = act.ActivateTabRelative(-1),
--    },
--    {
--      key = 'n',
--      mods = 'LEADER',
--      action = act.ActivateTabRelative(1),
--    },
    -- {
    --   key = 'LeftArrow',
    --   mods = 'CTRL|SHIFT',
    --   action = act.ActivateTabRelative(-1),
    -- },
    -- {
    --   key = 'RightArrow',
    --   mods = 'CTRL|SHIFT',
    --   action = act.ActivateTabRelative(1),
    -- },
    {
      key = '2',
      mods = 'CTRL',
      action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    {
      key = '2',
      mods = 'LEADER',
      action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    {
      key = '5',
      mods = 'CTRL',
      action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
      key = '5',
      mods = 'LEADER',
      action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    }
  },
  window_padding = {
    left = 10,
    right = 10,
    top = 0,
    bottom = 0,
  },
  window_background_opacity = 0.99,
  hide_tab_bar_if_only_one_tab = false,
  use_fancy_tab_bar = true,
  scrollback_lines = 999999,
  enable_scroll_bar = true,
  adjust_window_size_when_changing_font_size=false,
  font =  wezterm.font_with_fallback({"Hack", "Twemoji"}),
  font_size = 12,
  force_reverse_video_cursor = false,
  color_scheme = 'Dracula+',
  default_cursor_style = 'BlinkingBar',
  cursor_blink_rate = 500,
  animation_fps = 60,
  enable_wayland= true,
}
