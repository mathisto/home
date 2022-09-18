-- Application Aliases
BROWSER = 'Vivaldi'
CALENDAR = 'Fantastical'
DATA = 'DataGrip'
EDITOR_BAK = 'PyCharm'
VS_CODE = 'Visual Studio Code'
EDITOR = 'Emacs'
FILE_MANAGER = 'QSpace Pro'
MAIL = 'Spark'
MUSIC = 'YouTube'
NOTES = 'Logseq'
REST_CLIENT = 'Insomnia'
TERMINAL = 'iTerm'
VIDEO_CHAT = 'Google Meet'
VIM = 'Neovide'

-- Simple, single key Hyper Invocations
HyperBindings = {
   space = 'Alfred 5',
   a = 'Activity Monitor',
   b = BROWSER,
   c = CALENDAR,
   d = DATA,
   e = EDITOR,
   f = FILE_MANAGER,
   i = TERMINAL,
   m = MAIL,
   n = 'Notion Enhanced',
   o = NOTES,
   p = 'PyCharm',
   r = 'RubyMine',
   s = 'Slack',
   v = 'Visual Studio Code',
   x = 'Emacs',
   y = MUSIC,
   z = VIDEO_CHAT,
}

CmdHyperBindings = {
  a = function() DirectoryLaunch('~/Applications/') end,
  b = function() HyperFunction(Launch('Bitwarden')) end,
  d = function() HyperFunction(Launch('Discord')) end,
  f = function() HyperFunction(Launch('Finder')) end,
  h = function() HyperFunction(OpenWithApp('/Users/mathisto/.hammerspoon', EDITOR)) end,
  i = function() HyperFunction(Launch('Terminal')) end,
  j = function() SPOON.WinWin:moveAndResize('minimize') end,
  k = function() SPOON.WinWin:moveAndResize('maximize') end,
  m = function() HyperFunction(Launch('Messages')) end,
  n = function() HyperFunction(Launch('Numi')) end,
  o = function() HS.window.focusedWindow():moveToScreen(HS.window.focusedWindow():screen():next()) end,
  p = function() TypePass("braid") end,
  r = function() HyperFunction(Launch(REST_CLIENT)) end,
  t = function() HyperFunction(Launch('Toggl Track')) end,
  v = function() HyperFunction(Launch('OBS')) end,
  y = function() JumpToTab('www.youtube.com') end,
  z = function() HyperFunction(Launch('zoom.us')) end,
}

ShiftHyperBindings = {
  h = function() SPOON.WinWin:moveAndResize('halfleft') end,
  j = function() SPOON.WinWin:moveAndResize('halfdown') end,
  k = function() SPOON.WinWin:moveAndResize('halfup') end,
  l = function() SPOON.WinWin:moveAndResize('halfright') end,
  y = function() SPOON.WinWin:moveAndResize('cornerNW') end,
  u = function() SPOON.WinWin:moveAndResize('cornerNE') end,
  n = function() SPOON.WinWin:moveAndResize('cornerSW') end,
  o = function() HS.window.focusedWindow():moveToScreen(HS.window.focusedWindow():screen():next()) end,
  p = function() TypePass("bigbraid") end,
  m = function() SPOON.WinWin:moveAndResize('cornerSE') end,
}
