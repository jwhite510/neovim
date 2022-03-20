local helpers = require('test.functional.helpers')(after_each)
local Screen = require('test.functional.ui.screen')

local feed = helpers.feed
local clear = helpers.clear
local command = helpers.command
local insert = helpers.insert
local write_file = helpers.write_file
local source = helpers.source

describe('Diff mode screen', function()
  local fname = 'Xtest-functional-diff-screen-1'
  local fname_2 = fname .. '.2'
  local fname_3 = fname .. '.3'
  local screen

  local reread = function()
    feed(':e<cr><c-w>w:e<cr><c-w>w:e<cr><c-w>w')
  end

  setup(function()
    clear()
    os.remove(fname)
    os.remove(fname_2)
    os.remove(fname_3)
  end)

  teardown(function()
    os.remove(fname)
    os.remove(fname_2)
    os.remove(fname_3)
  end)

  before_each(function()
    clear()
    feed(':e ' .. fname .. '<cr>')
    feed(':vnew ' .. fname_2 .. '<cr>')
    feed(':vnew ' .. fname_3 .. '<cr>')
    -- feed(':set equalalwayss<cr>')
    -- feed('<c-w>=')
    feed(':windo diffthis<cr>')
    -- feed('<c-w>w:diffthis<cr><c-w>w')

    screen = Screen.new(100, 16)
    screen:attach()
    screen:set_default_attr_ids({
      [1] = {foreground = Screen.colors.DarkBlue, background = Screen.colors.Gray};
      [2] = {foreground = Screen.colors.Blue1, bold = true, background = Screen.colors.LightCyan1};
      [3] = {reverse = true};
      [4] = {background = Screen.colors.LightBlue};
      [5] = {foreground = Screen.colors.DarkBlue, background = Screen.colors.LightGray};
      [6] = {foreground = Screen.colors.Blue1, bold = true};
      [7] = {reverse = true, bold = true};
      [8] = {background = Screen.colors.Red1, bold = true};
      [10] = {foreground = Screen.colors.Brown};
      [9] = {background = Screen.colors.Plum1};
})
    feed('<c-w>=')
    feed(':windo set nu!<cr>')


  end)

  it('Add a line in beginning of file 2', function()
    local f1 = [[

common line
    AAA
    AAA
    AAA
    ]]
    local f2 = [[

common line
<<<<<<< HEAD
    AAA
    AAA
    AAA
=======
    BBB
    BBB
    BBB
>>>>>>> branch1
    ]]
    local f3 = [[

common line
    BBB
    BBB
    BBB
    ]]

    write_file(fname, f1, false)
    write_file(fname_2, f2, false)
    write_file(fname_3, f3, false)
    reread()
    screen:snapshot_util()
    screen:snapshot_util()
    screen:expect([[
    {1:  }{10:  1 }                           {3:│}{1:  }{10:  1 }                          {3:│}{1:  }{10:  1 }^                           |
    {1:  }{10:  2 }common line                {3:│}{1:  }{10:  2 }common line               {3:│}{1:  }{10:  2 }common line                |
    {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  3 }{4:<<<<<<< HEAD              }{3:│}{1:  }{10:    }{2:---------------------------}|
    {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  4 }{9:    AAA                   }{3:│}{1:  }{10:  3 }{9:    AAA                    }|
    {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  5 }{9:    AAA                   }{3:│}{1:  }{10:  4 }{9:    AAA                    }|
    {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  6 }{9:    AAA                   }{3:│}{1:  }{10:  5 }{9:    AAA                    }|
    {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  7 }{4:=======                   }{3:│}{1:  }{10:    }{2:---------------------------}|
    {1:  }{10:  3 }{9:    BBB                    }{3:│}{1:  }{10:  8 }{9:    BBB                   }{3:│}{1:  }{10:    }{2:---------------------------}|
    {1:  }{10:  4 }{9:    BBB                    }{3:│}{1:  }{10:  9 }{9:    BBB                   }{3:│}{1:  }{10:    }{2:---------------------------}|
    {1:  }{10:  5 }{9:    BBB                    }{3:│}{1:  }{10: 10 }{9:    BBB                   }{3:│}{1:  }{10:    }{2:---------------------------}|
    {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10: 11 }{4:>>>>>>> branch1           }{3:│}{1:  }{10:    }{2:---------------------------}|
    {1:  }{10:  6 }                           {3:│}{1:  }{10: 12 }                          {3:│}{1:  }{10:  6 }                           |
    {6:~                                }{3:│}{6:~                               }{3:│}{6:~                                }|
    {6:~                                }{3:│}{6:~                               }{3:│}{6:~                                }|
    {3:<test-functional-diff-screen-1.3  <est-functional-diff-screen-1.2  }{7:Xtest-functional-diff-screen-1   }|
    :e                                                                                                  |
    ]])


    -- move to the first window
    feed('1<c-w>w')
    -- get all of the differences
    feed(':2,6diffget screen-1.2<cr>')
    screen:snapshot_util()
  end)
end)
