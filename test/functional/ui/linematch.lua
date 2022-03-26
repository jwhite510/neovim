local helpers = require('test.functional.helpers')(after_each)
local Screen = require('test.functional.ui.screen')

local feed = helpers.feed
local clear = helpers.clear
local command = helpers.command
local insert = helpers.insert
local write_file = helpers.write_file
local source = helpers.source

describe('Diff mode screen with 3 diffs open', function()
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
    feed(':set diffopt+=linematch:30<cr>')
    feed(':e ' .. fname .. '<cr>')
    feed(':vnew ' .. fname_2 .. '<cr>')
    feed(':vnew ' .. fname_3 .. '<cr>')
    feed(':windo diffthis<cr>')

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
  describe('setup the diff screen to look like a merge conflict with 3 files in diff mode', function()
    before_each(function()

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
    end)

    it('get from window 1', function()
      feed('1<c-w>w')
      feed(':2,6diffget screen-1.2<cr>')
      screen:expect([[
      {1:  }{10:  1 }^                           {3:│}{1:  }{10:  1 }                          {3:│}{1:  }{10:  1 }                           |
      {1:  }{10:  2 }common line                {3:│}{1:  }{10:  2 }common line               {3:│}{1:  }{10:  2 }common line                |
      {1:  }{10:  3 }{9:<<<<<<< HEAD               }{3:│}{1:  }{10:  3 }{9:<<<<<<< HEAD              }{3:│}{1:  }{10:    }{2:---------------------------}|
      {1:  }{10:  4 }    AAA                    {3:│}{1:  }{10:  4 }    AAA                   {3:│}{1:  }{10:  3 }    AAA                    |
      {1:  }{10:  5 }    AAA                    {3:│}{1:  }{10:  5 }    AAA                   {3:│}{1:  }{10:  4 }    AAA                    |
      {1:  }{10:  6 }    AAA                    {3:│}{1:  }{10:  6 }    AAA                   {3:│}{1:  }{10:  5 }    AAA                    |
      {1:  }{10:  7 }{9:=======                    }{3:│}{1:  }{10:  7 }{9:=======                   }{3:│}{1:  }{10:    }{2:---------------------------}|
      {1:  }{10:  8 }{9:    BBB                    }{3:│}{1:  }{10:  8 }{9:    BBB                   }{3:│}{1:  }{10:    }{2:---------------------------}|
      {1:  }{10:  9 }{9:    BBB                    }{3:│}{1:  }{10:  9 }{9:    BBB                   }{3:│}{1:  }{10:    }{2:---------------------------}|
      {1:  }{10: 10 }{9:    BBB                    }{3:│}{1:  }{10: 10 }{9:    BBB                   }{3:│}{1:  }{10:    }{2:---------------------------}|
      {1:  }{10: 11 }{9:>>>>>>> branch1            }{3:│}{1:  }{10: 11 }{9:>>>>>>> branch1           }{3:│}{1:  }{10:    }{2:---------------------------}|
      {1:  }{10: 12 }                           {3:│}{1:  }{10: 12 }                          {3:│}{1:  }{10:  6 }                           |
      {6:~                                }{3:│}{6:~                               }{3:│}{6:~                                }|
      {6:~                                }{3:│}{6:~                               }{3:│}{6:~                                }|
      {7:<-functional-diff-screen-1.3 [+]  }{3:<est-functional-diff-screen-1.2  Xtest-functional-diff-screen-1   }|
      :2,6diffget screen-1.2                                                                              |
      ]])
    end)

    it('get from window 2', function()
      feed('2<c-w>w')
      feed(':5,7diffget screen-1.3<cr>')
      screen:expect([[
      {1:  }{10:  1 }                           {3:│}{1:  }{10:  1 }^                          {3:│}{1:  }{10:  1 }                           |
      {1:  }{10:  2 }common line                {3:│}{1:  }{10:  2 }common line               {3:│}{1:  }{10:  2 }common line                |
      {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  3 }{4:<<<<<<< HEAD              }{3:│}{1:  }{10:    }{2:---------------------------}|
      {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  4 }{9:    AAA                   }{3:│}{1:  }{10:  3 }{9:    AAA                    }|
      {1:  }{10:  3 }{9:    BBB                    }{3:│}{1:  }{10:  5 }{9:    BBB                   }{3:│}{1:  }{10:    }{2:---------------------------}|
      {1:  }{10:  4 }{9:    }{8:BBB}{9:                    }{3:│}{1:  }{10:  6 }{9:    }{8:BBB}{9:                   }{3:│}{1:  }{10:  4 }{9:    }{8:AAA}{9:                    }|
      {1:  }{10:  5 }{9:    }{8:BBB}{9:                    }{3:│}{1:  }{10:  7 }{9:    }{8:BBB}{9:                   }{3:│}{1:  }{10:  5 }{9:    }{8:AAA}{9:                    }|
      {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  8 }{4:>>>>>>> branch1           }{3:│}{1:  }{10:    }{2:---------------------------}|
      {1:  }{10:  6 }                           {3:│}{1:  }{10:  9 }                          {3:│}{1:  }{10:  6 }                           |
      {6:~                                }{3:│}{6:~                               }{3:│}{6:~                                }|
      {6:~                                }{3:│}{6:~                               }{3:│}{6:~                                }|
      {6:~                                }{3:│}{6:~                               }{3:│}{6:~                                }|
      {6:~                                }{3:│}{6:~                               }{3:│}{6:~                                }|
      {6:~                                }{3:│}{6:~                               }{3:│}{6:~                                }|
      {3:<test-functional-diff-screen-1.3  }{7:<functional-diff-screen-1.2 [+]  }{3:Xtest-functional-diff-screen-1   }|
      :5,7diffget screen-1.3                                                                              |
      ]])
    end)

    it('get from window 3', function()
      feed('3<c-w>w')
      feed(':5,6diffget screen-1.2<cr>')
      screen:expect([[
      {1:  }{10:  1 }                           {3:│}{1:  }{10:  1 }                          {3:│}{1:  }{10:  1 }^                           |
      {1:  }{10:  2 }common line                {3:│}{1:  }{10:  2 }common line               {3:│}{1:  }{10:  2 }common line                |
      {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  3 }{4:<<<<<<< HEAD              }{3:│}{1:  }{10:    }{2:---------------------------}|
      {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  4 }{9:    AAA                   }{3:│}{1:  }{10:  3 }{9:    AAA                    }|
      {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  5 }{9:    AAA                   }{3:│}{1:  }{10:  4 }{9:    AAA                    }|
      {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  6 }{9:    AAA                   }{3:│}{1:  }{10:  5 }{9:    AAA                    }|
      {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  7 }{9:=======                   }{3:│}{1:  }{10:  6 }{9:=======                    }|
      {1:  }{10:  3 }    BBB                    {3:│}{1:  }{10:  8 }    BBB                   {3:│}{1:  }{10:  7 }    BBB                    |
      {1:  }{10:  4 }    BBB                    {3:│}{1:  }{10:  9 }    BBB                   {3:│}{1:  }{10:  8 }    BBB                    |
      {1:  }{10:  5 }    BBB                    {3:│}{1:  }{10: 10 }    BBB                   {3:│}{1:  }{10:  9 }    BBB                    |
      {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10: 11 }{9:>>>>>>> branch1           }{3:│}{1:  }{10: 10 }{9:>>>>>>> branch1            }|
      {1:  }{10:  6 }                           {3:│}{1:  }{10: 12 }                          {3:│}{1:  }{10: 11 }                           |
      {6:~                                }{3:│}{6:~                               }{3:│}{6:~                                }|
      {6:~                                }{3:│}{6:~                               }{3:│}{6:~                                }|
      {3:<test-functional-diff-screen-1.3  <est-functional-diff-screen-1.2  }{7:<st-functional-diff-screen-1 [+] }|
      :5,6diffget screen-1.2                                                                              |
      ]])
    end)

    it('put from window 2 - part', function()
      feed('2<c-w>w')
      feed(':6,8diffput screen-1<cr>')
      screen:expect([[
      {1:  }{10:  1 }                           {3:│}{1:  }{10:  1 }^                          {3:│}{1:  }{10:  1 }                           |
      {1:  }{10:  2 }common line                {3:│}{1:  }{10:  2 }common line               {3:│}{1:  }{10:  2 }common line                |
      {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  3 }{4:<<<<<<< HEAD              }{3:│}{1:  }{10:    }{2:---------------------------}|
      {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  4 }{9:    AAA                   }{3:│}{1:  }{10:  3 }{9:    AAA                    }|
      {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  5 }{9:    AAA                   }{3:│}{1:  }{10:  4 }{9:    AAA                    }|
      {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  6 }{9:    AAA                   }{3:│}{1:  }{10:  5 }{9:    AAA                    }|
      {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  7 }{9:=======                   }{3:│}{1:  }{10:  6 }{9:=======                    }|
      {1:  }{10:  3 }{9:    BBB                    }{3:│}{1:  }{10:  8 }{9:    BBB                   }{3:│}{1:  }{10:    }{2:---------------------------}|
      {1:  }{10:  4 }{9:    BBB                    }{3:│}{1:  }{10:  9 }{9:    BBB                   }{3:│}{1:  }{10:    }{2:---------------------------}|
      {1:  }{10:  5 }    BBB                    {3:│}{1:  }{10: 10 }    BBB                   {3:│}{1:  }{10:  7 }    BBB                    |
      {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10: 11 }{4:>>>>>>> branch1           }{3:│}{1:  }{10:    }{2:---------------------------}|
      {1:  }{10:  6 }                           {3:│}{1:  }{10: 12 }                          {3:│}{1:  }{10:  8 }                           |
      {6:~                                }{3:│}{6:~                               }{3:│}{6:~                                }|
      {6:~                                }{3:│}{6:~                               }{3:│}{6:~                                }|
      {3:<test-functional-diff-screen-1.3  }{7:<est-functional-diff-screen-1.2  }{3:<st-functional-diff-screen-1 [+] }|
      :6,8diffput screen-1                                                                                |
      ]])

    end)
    it('put from window 2 - part to end', function()
      feed('2<c-w>w')
      feed(':6,11diffput screen-1<cr>')
      screen:expect([[
      {1:  }{10:  1 }                           {3:│}{1:  }{10:  1 }^                          {3:│}{1:  }{10:  1 }                           |
      {1:  }{10:  2 }common line                {3:│}{1:  }{10:  2 }common line               {3:│}{1:  }{10:  2 }common line                |
      {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  3 }{4:<<<<<<< HEAD              }{3:│}{1:  }{10:    }{2:---------------------------}|
      {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  4 }{9:    AAA                   }{3:│}{1:  }{10:  3 }{9:    AAA                    }|
      {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  5 }{9:    AAA                   }{3:│}{1:  }{10:  4 }{9:    AAA                    }|
      {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  6 }{9:    AAA                   }{3:│}{1:  }{10:  5 }{9:    AAA                    }|
      {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10:  7 }{9:=======                   }{3:│}{1:  }{10:  6 }{9:=======                    }|
      {1:  }{10:  3 }    BBB                    {3:│}{1:  }{10:  8 }    BBB                   {3:│}{1:  }{10:  7 }    BBB                    |
      {1:  }{10:  4 }    BBB                    {3:│}{1:  }{10:  9 }    BBB                   {3:│}{1:  }{10:  8 }    BBB                    |
      {1:  }{10:  5 }    BBB                    {3:│}{1:  }{10: 10 }    BBB                   {3:│}{1:  }{10:  9 }    BBB                    |
      {1:  }{10:    }{2:---------------------------}{3:│}{1:  }{10: 11 }{9:>>>>>>> branch1           }{3:│}{1:  }{10: 10 }{9:>>>>>>> branch1            }|
      {1:  }{10:  6 }                           {3:│}{1:  }{10: 12 }                          {3:│}{1:  }{10: 11 }                           |
      {6:~                                }{3:│}{6:~                               }{3:│}{6:~                                }|
      {6:~                                }{3:│}{6:~                               }{3:│}{6:~                                }|
      {3:<test-functional-diff-screen-1.3  }{7:<est-functional-diff-screen-1.2  }{3:<st-functional-diff-screen-1 [+] }|
      :6,11diffput screen-1                                                                               |
      ]])

    end)
  end)
end)

describe('Diff mode screen with 2 diffs open', function()
  local fname = 'Xtest-functional-diff-screen-1'
  local fname_2 = fname .. '.2'
  local screen

  local reread = function()
    feed(':e<cr><c-w>w:e<cr><c-w>w:e<cr><c-w>w')
  end

  setup(function()
    clear()
    os.remove(fname)
    os.remove(fname_2)
  end)

  teardown(function()
    os.remove(fname)
    os.remove(fname_2)
  end)

  before_each(function()
    clear()
    feed(':set diffopt+=linematch:30<cr>')
    feed(':e ' .. fname .. '<cr>')
    feed(':vnew ' .. fname_2 .. '<cr>')
    feed(':windo diffthis<cr>')

    screen = Screen.new(100, 20)
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
  describe('setup a diff with 2 files', function()
    before_each(function()

      local f1 = [[

common line
common line

DEFabc
xyz
xyz
xyz
DEFabc
DEFabc
DEFabc
common line
common line
DEF
common line
DEF
something
      ]]
      local f2 = [[

common line
common line

ABCabc
ABCabc
ABCabc
ABCabc
common line
common line
common line
something
      ]]
      write_file(fname, f1, false)
      write_file(fname_2, f2, false)
      reread()
    end)

    it('get from window 1 from line 5 to 9', function()
      feed('1<c-w>w')
      feed(':5,9diffget<cr>')
      screen:expect([[
      {1:+ }{10:  1 }{5:^+--  7 lines: common line··················}{3:│}{1:+ }{10:  1 }{5:+--  7 lines: common line···················}|
      {1:  }{10:  8 }xyz                                        {3:│}{1:  }{10:  8 }xyz                                         |
      {1:  }{10:  9 }DEFabc                                     {3:│}{1:  }{10:  9 }DEFabc                                      |
      {1:  }{10: 10 }DEFabc                                     {3:│}{1:  }{10: 10 }DEFabc                                      |
      {1:  }{10: 11 }DEFabc                                     {3:│}{1:  }{10: 11 }DEFabc                                      |
      {1:  }{10: 12 }common line                                {3:│}{1:  }{10: 12 }common line                                 |
      {1:  }{10: 13 }common line                                {3:│}{1:  }{10: 13 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 14 }{4:DEF                                         }|
      {1:  }{10: 14 }common line                                {3:│}{1:  }{10: 15 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 16 }{4:DEF                                         }|
      {1:  }{10: 15 }something                                  {3:│}{1:  }{10: 17 }something                                   |
      {1:  }{10: 16 }                                           {3:│}{1:  }{10: 18 }                                            |
      {6:~                                                }{3:│}{6:~                                                 }|
      {6:~                                                }{3:│}{6:~                                                 }|
      {6:~                                                }{3:│}{6:~                                                 }|
      {6:~                                                }{3:│}{6:~                                                 }|
      {6:~                                                }{3:│}{6:~                                                 }|
      {6:~                                                }{3:│}{6:~                                                 }|
      {7:Xtest-functional-diff-screen-1.2 [+]              }{3:Xtest-functional-diff-screen-1                    }|
      :5,9diffget                                                                                         |
      ]])
    end)
    it('get from window 2 from line 5 to 10', function()
      feed('2<c-w>w')
      feed(':5,10diffget<cr>')
      screen:expect([[
      {1:- }{10:  1 }                                           {3:│}{1:- }{10:  1 }^                                            |
      {1:  }{10:  2 }common line                                {3:│}{1:  }{10:  2 }common line                                 |
      {1:  }{10:  3 }common line                                {3:│}{1:  }{10:  3 }common line                                 |
      {1:  }{10:  4 }                                           {3:│}{1:  }{10:  4 }                                            |
      {1:  }{10:  5 }ABCabc                                     {3:│}{1:  }{10:  5 }ABCabc                                      |
      {1:  }{10:  6 }ABCabc                                     {3:│}{1:  }{10:  6 }ABCabc                                      |
      {1:  }{10:  7 }ABCabc                                     {3:│}{1:  }{10:  7 }ABCabc                                      |
      {1:  }{10:  8 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  8 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  9 }common line                                {3:│}{1:  }{10:  9 }common line                                 |
      {1:  }{10: 10 }common line                                {3:│}{1:  }{10: 10 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 11 }{4:DEF                                         }|
      {1:  }{10: 11 }common line                                {3:│}{1:  }{10: 12 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 13 }{4:DEF                                         }|
      {1:  }{10: 12 }something                                  {3:│}{1:  }{10: 14 }something                                   |
      {1:  }{10: 13 }                                           {3:│}{1:  }{10: 15 }                                            |
      {6:~                                                }{3:│}{6:~                                                 }|
      {6:~                                                }{3:│}{6:~                                                 }|
      {6:~                                                }{3:│}{6:~                                                 }|
      {3:Xtest-functional-diff-screen-1.2                  }{7:Xtest-functional-diff-screen-1 [+]                }|
      :5,10diffget                                                                                        |
      ]])
    end)
    it('get all from window 2', function()
      feed('2<c-w>w')
      feed(':4,17diffget<cr>')
      screen:expect([[
      {1:  }{10:  1 }                                           {3:│}{1:  }{10:  1 }^                                            |
      {1:  }{10:  2 }common line                                {3:│}{1:  }{10:  2 }common line                                 |
      {1:  }{10:  3 }common line                                {3:│}{1:  }{10:  3 }common line                                 |
      {1:  }{10:  4 }                                           {3:│}{1:  }{10:  4 }                                            |
      {1:  }{10:  5 }ABCabc                                     {3:│}{1:  }{10:  5 }ABCabc                                      |
      {1:  }{10:  6 }ABCabc                                     {3:│}{1:  }{10:  6 }ABCabc                                      |
      {1:  }{10:  7 }ABCabc                                     {3:│}{1:  }{10:  7 }ABCabc                                      |
      {1:  }{10:  8 }ABCabc                                     {3:│}{1:  }{10:  8 }ABCabc                                      |
      {1:  }{10:  9 }common line                                {3:│}{1:  }{10:  9 }common line                                 |
      {1:  }{10: 10 }common line                                {3:│}{1:  }{10: 10 }common line                                 |
      {1:  }{10: 11 }common line                                {3:│}{1:  }{10: 11 }common line                                 |
      {1:  }{10: 12 }something                                  {3:│}{1:  }{10: 12 }something                                   |
      {1:  }{10: 13 }                                           {3:│}{1:  }{10: 13 }                                            |
      {6:~                                                }{3:│}{6:~                                                 }|
      {6:~                                                }{3:│}{6:~                                                 }|
      {6:~                                                }{3:│}{6:~                                                 }|
      {6:~                                                }{3:│}{6:~                                                 }|
      {6:~                                                }{3:│}{6:~                                                 }|
      {3:Xtest-functional-diff-screen-1.2                  }{7:Xtest-functional-diff-screen-1 [+]                }|
      :4,17diffget                                                                                        |
      ]])

    end)
    it('get all from window 1', function()
      feed('1<c-w>w')
      feed(':4,12diffget<cr>')
      screen:expect([[
      {1:  }{10:  1 }^                                           {3:│}{1:  }{10:  1 }                                            |
      {1:  }{10:  2 }common line                                {3:│}{1:  }{10:  2 }common line                                 |
      {1:  }{10:  3 }common line                                {3:│}{1:  }{10:  3 }common line                                 |
      {1:  }{10:  4 }                                           {3:│}{1:  }{10:  4 }                                            |
      {1:  }{10:  5 }DEFabc                                     {3:│}{1:  }{10:  5 }DEFabc                                      |
      {1:  }{10:  6 }xyz                                        {3:│}{1:  }{10:  6 }xyz                                         |
      {1:  }{10:  7 }xyz                                        {3:│}{1:  }{10:  7 }xyz                                         |
      {1:  }{10:  8 }xyz                                        {3:│}{1:  }{10:  8 }xyz                                         |
      {1:  }{10:  9 }DEFabc                                     {3:│}{1:  }{10:  9 }DEFabc                                      |
      {1:  }{10: 10 }DEFabc                                     {3:│}{1:  }{10: 10 }DEFabc                                      |
      {1:  }{10: 11 }DEFabc                                     {3:│}{1:  }{10: 11 }DEFabc                                      |
      {1:  }{10: 12 }common line                                {3:│}{1:  }{10: 12 }common line                                 |
      {1:  }{10: 13 }common line                                {3:│}{1:  }{10: 13 }common line                                 |
      {1:  }{10: 14 }DEF                                        {3:│}{1:  }{10: 14 }DEF                                         |
      {1:  }{10: 15 }common line                                {3:│}{1:  }{10: 15 }common line                                 |
      {1:  }{10: 16 }DEF                                        {3:│}{1:  }{10: 16 }DEF                                         |
      {1:  }{10: 17 }something                                  {3:│}{1:  }{10: 17 }something                                   |
      {1:  }{10: 18 }                                           {3:│}{1:  }{10: 18 }                                            |
      {7:Xtest-functional-diff-screen-1.2 [+]              }{3:Xtest-functional-diff-screen-1                    }|
      :4,12diffget                                                                                        |
      ]])
    end)
    it('get from window 1 using do 1 line 5', function()
      feed('1<c-w>w')
      feed('5gg')
      feed('do')
      screen:expect([[
      {1:  }{10:  1 }                                           {3:│}{1:  }{10:  1 }                                            |
      {1:  }{10:  2 }common line                                {3:│}{1:  }{10:  2 }common line                                 |
      {1:  }{10:  3 }common line                                {3:│}{1:  }{10:  3 }common line                                 |
      {1:  }{10:  4 }                                           {3:│}{1:  }{10:  4 }                                            |
      {1:  }{10:  5 }^DEFabc                                     {3:│}{1:  }{10:  5 }DEFabc                                      |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  6 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  7 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  8 }{4:xyz                                         }|
      {1:  }{10:  6 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  9 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  7 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10: 10 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  8 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10: 11 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  9 }common line                                {3:│}{1:  }{10: 12 }common line                                 |
      {1:  }{10: 10 }common line                                {3:│}{1:  }{10: 13 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 14 }{4:DEF                                         }|
      {1:  }{10: 11 }common line                                {3:│}{1:  }{10: 15 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 16 }{4:DEF                                         }|
      {1:  }{10: 12 }something                                  {3:│}{1:  }{10: 17 }something                                   |
      {1:  }{10: 13 }                                           {3:│}{1:  }{10: 18 }                                            |
      {7:Xtest-functional-diff-screen-1.2 [+]              }{3:Xtest-functional-diff-screen-1                    }|
      :e                                                                                                  |
      ]])
    end)
    it('get from window 1 using do 2 line 6', function()
      feed('1<c-w>w')
      feed('6gg')
      feed('do')
      screen:expect([[
      {1:  }{10:  1 }                                           {3:│}{1:  }{10:  1 }                                            |
      {1:  }{10:  2 }common line                                {3:│}{1:  }{10:  2 }common line                                 |
      {1:  }{10:  3 }common line                                {3:│}{1:  }{10:  3 }common line                                 |
      {1:  }{10:  4 }                                           {3:│}{1:  }{10:  4 }                                            |
      {1:  }{10:  5 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  5 }{8:DEF}{9:abc                                      }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  6 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  7 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  8 }{4:xyz                                         }|
      {1:  }{10:  6 }^DEFabc                                     {3:│}{1:  }{10:  9 }DEFabc                                      |
      {1:  }{10:  7 }DEFabc                                     {3:│}{1:  }{10: 10 }DEFabc                                      |
      {1:  }{10:  8 }DEFabc                                     {3:│}{1:  }{10: 11 }DEFabc                                      |
      {1:  }{10:  9 }common line                                {3:│}{1:  }{10: 12 }common line                                 |
      {1:  }{10: 10 }common line                                {3:│}{1:  }{10: 13 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 14 }{4:DEF                                         }|
      {1:  }{10: 11 }common line                                {3:│}{1:  }{10: 15 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 16 }{4:DEF                                         }|
      {1:  }{10: 12 }something                                  {3:│}{1:  }{10: 17 }something                                   |
      {1:  }{10: 13 }                                           {3:│}{1:  }{10: 18 }                                            |
      {7:Xtest-functional-diff-screen-1.2 [+]              }{3:Xtest-functional-diff-screen-1                    }|
      :e                                                                                                  |
      ]])
    end)
    it('get from window 1 using do 2 line 7', function()
      feed('1<c-w>w')
      feed('7gg')
      feed('do')
      screen:expect([[
      {1:  }{10:  1 }                                           {3:│}{1:  }{10:  1 }                                            |
      {1:  }{10:  2 }common line                                {3:│}{1:  }{10:  2 }common line                                 |
      {1:  }{10:  3 }common line                                {3:│}{1:  }{10:  3 }common line                                 |
      {1:  }{10:  4 }                                           {3:│}{1:  }{10:  4 }                                            |
      {1:  }{10:  5 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  5 }{8:DEF}{9:abc                                      }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  6 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  7 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  8 }{4:xyz                                         }|
      {1:  }{10:  6 }DEFabc                                     {3:│}{1:  }{10:  9 }DEFabc                                      |
      {1:  }{10:  7 }^DEFabc                                     {3:│}{1:  }{10: 10 }DEFabc                                      |
      {1:  }{10:  8 }DEFabc                                     {3:│}{1:  }{10: 11 }DEFabc                                      |
      {1:  }{10:  9 }common line                                {3:│}{1:  }{10: 12 }common line                                 |
      {1:  }{10: 10 }common line                                {3:│}{1:  }{10: 13 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 14 }{4:DEF                                         }|
      {1:  }{10: 11 }common line                                {3:│}{1:  }{10: 15 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 16 }{4:DEF                                         }|
      {1:  }{10: 12 }something                                  {3:│}{1:  }{10: 17 }something                                   |
      {1:  }{10: 13 }                                           {3:│}{1:  }{10: 18 }                                            |
      {7:Xtest-functional-diff-screen-1.2 [+]              }{3:Xtest-functional-diff-screen-1                    }|
      :e                                                                                                  |
      ]])
    end)
    it('get from window 1 using do 2 line 11', function()
      feed('1<c-w>w')
      feed('11gg')
      feed('do')
      screen:expect([[
      {1:  }{10:  1 }                                           {3:│}{1:  }{10:  1 }                                            |
      {1:  }{10:  2 }common line                                {3:│}{1:  }{10:  2 }common line                                 |
      {1:  }{10:  3 }common line                                {3:│}{1:  }{10:  3 }common line                                 |
      {1:  }{10:  4 }                                           {3:│}{1:  }{10:  4 }                                            |
      {1:  }{10:  5 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  5 }{8:DEF}{9:abc                                      }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  6 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  7 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  8 }{4:xyz                                         }|
      {1:  }{10:  6 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  9 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  7 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10: 10 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  8 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10: 11 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  9 }common line                                {3:│}{1:  }{10: 12 }common line                                 |
      {1:  }{10: 10 }common line                                {3:│}{1:  }{10: 13 }common line                                 |
      {1:  }{10: 11 }DEF                                        {3:│}{1:  }{10: 14 }DEF                                         |
      {1:  }{10: 12 }^common line                                {3:│}{1:  }{10: 15 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 16 }{4:DEF                                         }|
      {1:  }{10: 13 }something                                  {3:│}{1:  }{10: 17 }something                                   |
      {1:  }{10: 14 }                                           {3:│}{1:  }{10: 18 }                                            |
      {7:Xtest-functional-diff-screen-1.2 [+]              }{3:Xtest-functional-diff-screen-1                    }|
      :e                                                                                                  |
      ]])
    end)
    it('get from window 1 using do 2 line 12', function()
      feed('1<c-w>w')
      feed('12gg')
      feed('do')
      screen:expect([[
      {1:  }{10:  1 }                                           {3:│}{1:  }{10:  1 }                                            |
      {1:  }{10:  2 }common line                                {3:│}{1:  }{10:  2 }common line                                 |
      {1:  }{10:  3 }common line                                {3:│}{1:  }{10:  3 }common line                                 |
      {1:  }{10:  4 }                                           {3:│}{1:  }{10:  4 }                                            |
      {1:  }{10:  5 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  5 }{8:DEF}{9:abc                                      }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  6 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  7 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  8 }{4:xyz                                         }|
      {1:  }{10:  6 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  9 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  7 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10: 10 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  8 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10: 11 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  9 }common line                                {3:│}{1:  }{10: 12 }common line                                 |
      {1:  }{10: 10 }common line                                {3:│}{1:  }{10: 13 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 14 }{4:DEF                                         }|
      {1:  }{10: 11 }common line                                {3:│}{1:  }{10: 15 }common line                                 |
      {1:  }{10: 12 }DEF                                        {3:│}{1:  }{10: 16 }DEF                                         |
      {1:  }{10: 13 }^something                                  {3:│}{1:  }{10: 17 }something                                   |
      {1:  }{10: 14 }                                           {3:│}{1:  }{10: 18 }                                            |
      {7:Xtest-functional-diff-screen-1.2 [+]              }{3:Xtest-functional-diff-screen-1                    }|
      :e                                                                                                  |
      ]])
    end)
    it('put from window 1 using dp 1 line 5', function()
      feed('1<c-w>w')
      feed('5gg')
      feed('dp')
      screen:expect([[
      {1:  }{10:  1 }                                           {3:│}{1:  }{10:  1 }                                            |
      {1:  }{10:  2 }common line                                {3:│}{1:  }{10:  2 }common line                                 |
      {1:  }{10:  3 }common line                                {3:│}{1:  }{10:  3 }common line                                 |
      {1:  }{10:  4 }                                           {3:│}{1:  }{10:  4 }                                            |
      {1:  }{10:  5 }^ABCabc                                     {3:│}{1:  }{10:  5 }ABCabc                                      |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  6 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  7 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  8 }{4:xyz                                         }|
      {1:  }{10:  6 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  9 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  7 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10: 10 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  8 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10: 11 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  9 }common line                                {3:│}{1:  }{10: 12 }common line                                 |
      {1:  }{10: 10 }common line                                {3:│}{1:  }{10: 13 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 14 }{4:DEF                                         }|
      {1:  }{10: 11 }common line                                {3:│}{1:  }{10: 15 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 16 }{4:DEF                                         }|
      {1:  }{10: 12 }something                                  {3:│}{1:  }{10: 17 }something                                   |
      {1:  }{10: 13 }                                           {3:│}{1:  }{10: 18 }                                            |
      {7:Xtest-functional-diff-screen-1.2                  }{3:Xtest-functional-diff-screen-1 [+]                }|
      :e                                                                                                  |
      ]])
    end)
    it('put from window 1 using dp 2 line 6', function()
      feed('1<c-w>w')
      feed('6gg')
      feed('dp')
      screen:expect([[
      {1:  }{10:  1 }                                           {3:│}{1:  }{10:  1 }                                            |
      {1:  }{10:  2 }common line                                {3:│}{1:  }{10:  2 }common line                                 |
      {1:  }{10:  3 }common line                                {3:│}{1:  }{10:  3 }common line                                 |
      {1:  }{10:  4 }                                           {3:│}{1:  }{10:  4 }                                            |
      {1:  }{10:  5 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  5 }{8:DEF}{9:abc                                      }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  6 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  7 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  8 }{4:xyz                                         }|
      {1:  }{10:  6 }^ABCabc                                     {3:│}{1:  }{10:  9 }ABCabc                                      |
      {1:  }{10:  7 }ABCabc                                     {3:│}{1:  }{10: 10 }ABCabc                                      |
      {1:  }{10:  8 }ABCabc                                     {3:│}{1:  }{10: 11 }ABCabc                                      |
      {1:  }{10:  9 }common line                                {3:│}{1:  }{10: 12 }common line                                 |
      {1:  }{10: 10 }common line                                {3:│}{1:  }{10: 13 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 14 }{4:DEF                                         }|
      {1:  }{10: 11 }common line                                {3:│}{1:  }{10: 15 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 16 }{4:DEF                                         }|
      {1:  }{10: 12 }something                                  {3:│}{1:  }{10: 17 }something                                   |
      {1:  }{10: 13 }                                           {3:│}{1:  }{10: 18 }                                            |
      {7:Xtest-functional-diff-screen-1.2                  }{3:Xtest-functional-diff-screen-1 [+]                }|
      :e                                                                                                  |
      ]])
    end)
    it('put from window 1 using dp 2 line 7', function()
      feed('1<c-w>w')
      feed('7gg')
      feed('dp')
      screen:expect([[
      {1:  }{10:  1 }                                           {3:│}{1:  }{10:  1 }                                            |
      {1:  }{10:  2 }common line                                {3:│}{1:  }{10:  2 }common line                                 |
      {1:  }{10:  3 }common line                                {3:│}{1:  }{10:  3 }common line                                 |
      {1:  }{10:  4 }                                           {3:│}{1:  }{10:  4 }                                            |
      {1:  }{10:  5 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  5 }{8:DEF}{9:abc                                      }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  6 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  7 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  8 }{4:xyz                                         }|
      {1:  }{10:  6 }ABCabc                                     {3:│}{1:  }{10:  9 }ABCabc                                      |
      {1:  }{10:  7 }^ABCabc                                     {3:│}{1:  }{10: 10 }ABCabc                                      |
      {1:  }{10:  8 }ABCabc                                     {3:│}{1:  }{10: 11 }ABCabc                                      |
      {1:  }{10:  9 }common line                                {3:│}{1:  }{10: 12 }common line                                 |
      {1:  }{10: 10 }common line                                {3:│}{1:  }{10: 13 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 14 }{4:DEF                                         }|
      {1:  }{10: 11 }common line                                {3:│}{1:  }{10: 15 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 16 }{4:DEF                                         }|
      {1:  }{10: 12 }something                                  {3:│}{1:  }{10: 17 }something                                   |
      {1:  }{10: 13 }                                           {3:│}{1:  }{10: 18 }                                            |
      {7:Xtest-functional-diff-screen-1.2                  }{3:Xtest-functional-diff-screen-1 [+]                }|
      :e                                                                                                  |
      ]])
    end)
    it('put from window 1 using dp 2 line 11', function()
      feed('1<c-w>w')
      feed('11gg')
      feed('dp')
      screen:expect([[
      {1:  }{10:  1 }                                           {3:│}{1:  }{10:  1 }                                            |
      {1:  }{10:  2 }common line                                {3:│}{1:  }{10:  2 }common line                                 |
      {1:  }{10:  3 }common line                                {3:│}{1:  }{10:  3 }common line                                 |
      {1:  }{10:  4 }                                           {3:│}{1:  }{10:  4 }                                            |
      {1:  }{10:  5 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  5 }{8:DEF}{9:abc                                      }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  6 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  7 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  8 }{4:xyz                                         }|
      {1:  }{10:  6 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  9 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  7 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10: 10 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  8 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10: 11 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  9 }common line                                {3:│}{1:  }{10: 12 }common line                                 |
      {1:  }{10: 10 }common line                                {3:│}{1:  }{10: 13 }common line                                 |
      {1:  }{10: 11 }^common line                                {3:│}{1:  }{10: 14 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 15 }{4:DEF                                         }|
      {1:  }{10: 12 }something                                  {3:│}{1:  }{10: 16 }something                                   |
      {1:  }{10: 13 }                                           {3:│}{1:  }{10: 17 }                                            |
      {6:~                                                }{3:│}{6:~                                                 }|
      {7:Xtest-functional-diff-screen-1.2                  }{3:Xtest-functional-diff-screen-1 [+]                }|
      :e                                                                                                  |
      ]])
    end)
    it('put from window 1 using dp 2 line 12', function()
      feed('1<c-w>w')
      feed('12gg')
      feed('dp')
      screen:expect([[
      {1:  }{10:  1 }                                           {3:│}{1:  }{10:  1 }                                            |
      {1:  }{10:  2 }common line                                {3:│}{1:  }{10:  2 }common line                                 |
      {1:  }{10:  3 }common line                                {3:│}{1:  }{10:  3 }common line                                 |
      {1:  }{10:  4 }                                           {3:│}{1:  }{10:  4 }                                            |
      {1:  }{10:  5 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  5 }{8:DEF}{9:abc                                      }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  6 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  7 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  8 }{4:xyz                                         }|
      {1:  }{10:  6 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  9 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  7 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10: 10 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  8 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10: 11 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  9 }common line                                {3:│}{1:  }{10: 12 }common line                                 |
      {1:  }{10: 10 }common line                                {3:│}{1:  }{10: 13 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 14 }{4:DEF                                         }|
      {1:  }{10: 11 }common line                                {3:│}{1:  }{10: 15 }common line                                 |
      {1:  }{10: 12 }^something                                  {3:│}{1:  }{10: 16 }something                                   |
      {1:  }{10: 13 }                                           {3:│}{1:  }{10: 17 }                                            |
      {6:~                                                }{3:│}{6:~                                                 }|
      {7:Xtest-functional-diff-screen-1.2                  }{3:Xtest-functional-diff-screen-1 [+]                }|
      :e                                                                                                  |
      ]])
    end)
    it('put from window 2 using dp line 6', function()
      feed('2<c-w>w')
      feed('6gg')
      feed('dp')
      screen:expect([[
      {1:  }{10:  1 }                                           {3:│}{1:  }{10:  1 }                                            |
      {1:  }{10:  2 }common line                                {3:│}{1:  }{10:  2 }common line                                 |
      {1:  }{10:  3 }common line                                {3:│}{1:  }{10:  3 }common line                                 |
      {1:  }{10:  4 }                                           {3:│}{1:  }{10:  4 }                                            |
      {1:  }{10:  5 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  5 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  6 }xyz                                        {3:│}{1:  }{10:  6 }^xyz                                         |
      {1:  }{10:  7 }xyz                                        {3:│}{1:  }{10:  7 }xyz                                         |
      {1:  }{10:  8 }xyz                                        {3:│}{1:  }{10:  8 }xyz                                         |
      {1:  }{10:  9 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  9 }{8:DEF}{9:abc                                      }|
      {1:  }{10: 10 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10: 10 }{8:DEF}{9:abc                                      }|
      {1:  }{10: 11 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10: 11 }{8:DEF}{9:abc                                      }|
      {1:  }{10: 12 }common line                                {3:│}{1:  }{10: 12 }common line                                 |
      {1:  }{10: 13 }common line                                {3:│}{1:  }{10: 13 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 14 }{4:DEF                                         }|
      {1:  }{10: 14 }common line                                {3:│}{1:  }{10: 15 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 16 }{4:DEF                                         }|
      {1:  }{10: 15 }something                                  {3:│}{1:  }{10: 17 }something                                   |
      {1:  }{10: 16 }                                           {3:│}{1:  }{10: 18 }                                            |
      {3:Xtest-functional-diff-screen-1.2 [+]              }{7:Xtest-functional-diff-screen-1                    }|
      :e                                                                                                  |
      ]])
    end)
    it('put from window 2 using dp line 8', function()
      feed('2<c-w>w')
      feed('8gg')
      feed('dp')
      screen:expect([[
      {1:  }{10:  1 }                                           {3:│}{1:  }{10:  1 }                                            |
      {1:  }{10:  2 }common line                                {3:│}{1:  }{10:  2 }common line                                 |
      {1:  }{10:  3 }common line                                {3:│}{1:  }{10:  3 }common line                                 |
      {1:  }{10:  4 }                                           {3:│}{1:  }{10:  4 }                                            |
      {1:  }{10:  5 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  5 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  6 }xyz                                        {3:│}{1:  }{10:  6 }xyz                                         |
      {1:  }{10:  7 }xyz                                        {3:│}{1:  }{10:  7 }xyz                                         |
      {1:  }{10:  8 }xyz                                        {3:│}{1:  }{10:  8 }^xyz                                         |
      {1:  }{10:  9 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  9 }{8:DEF}{9:abc                                      }|
      {1:  }{10: 10 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10: 10 }{8:DEF}{9:abc                                      }|
      {1:  }{10: 11 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10: 11 }{8:DEF}{9:abc                                      }|
      {1:  }{10: 12 }common line                                {3:│}{1:  }{10: 12 }common line                                 |
      {1:  }{10: 13 }common line                                {3:│}{1:  }{10: 13 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 14 }{4:DEF                                         }|
      {1:  }{10: 14 }common line                                {3:│}{1:  }{10: 15 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 16 }{4:DEF                                         }|
      {1:  }{10: 15 }something                                  {3:│}{1:  }{10: 17 }something                                   |
      {1:  }{10: 16 }                                           {3:│}{1:  }{10: 18 }                                            |
      {3:Xtest-functional-diff-screen-1.2 [+]              }{7:Xtest-functional-diff-screen-1                    }|
      :e                                                                                                  |
      ]])
    end)
    it('put from window 2 using dp line 9', function()
      feed('2<c-w>w')
      feed('9gg')
      feed('dp')
      screen:expect([[
      {1:  }{10:  1 }                                           {3:│}{1:  }{10:  1 }                                            |
      {1:  }{10:  2 }common line                                {3:│}{1:  }{10:  2 }common line                                 |
      {1:  }{10:  3 }common line                                {3:│}{1:  }{10:  3 }common line                                 |
      {1:  }{10:  4 }                                           {3:│}{1:  }{10:  4 }                                            |
      {1:  }{10:  5 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  5 }{8:DEF}{9:abc                                      }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  6 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  7 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  8 }{4:xyz                                         }|
      {1:  }{10:  6 }DEFabc                                     {3:│}{1:  }{10:  9 }^DEFabc                                      |
      {1:  }{10:  7 }DEFabc                                     {3:│}{1:  }{10: 10 }DEFabc                                      |
      {1:  }{10:  8 }DEFabc                                     {3:│}{1:  }{10: 11 }DEFabc                                      |
      {1:  }{10:  9 }common line                                {3:│}{1:  }{10: 12 }common line                                 |
      {1:  }{10: 10 }common line                                {3:│}{1:  }{10: 13 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 14 }{4:DEF                                         }|
      {1:  }{10: 11 }common line                                {3:│}{1:  }{10: 15 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 16 }{4:DEF                                         }|
      {1:  }{10: 12 }something                                  {3:│}{1:  }{10: 17 }something                                   |
      {1:  }{10: 13 }                                           {3:│}{1:  }{10: 18 }                                            |
      {3:Xtest-functional-diff-screen-1.2 [+]              }{7:Xtest-functional-diff-screen-1                    }|
      :e                                                                                                  |
      ]])
    end)
    it('put from window 2 using dp line 17', function()
      feed('2<c-w>w')
      feed('17gg')
      feed('dp')
      screen:expect([[
      {1:  }{10:  1 }                                           {3:│}{1:  }{10:  1 }                                            |
      {1:  }{10:  2 }common line                                {3:│}{1:  }{10:  2 }common line                                 |
      {1:  }{10:  3 }common line                                {3:│}{1:  }{10:  3 }common line                                 |
      {1:  }{10:  4 }                                           {3:│}{1:  }{10:  4 }                                            |
      {1:  }{10:  5 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  5 }{8:DEF}{9:abc                                      }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  6 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  7 }{4:xyz                                         }|
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10:  8 }{4:xyz                                         }|
      {1:  }{10:  6 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10:  9 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  7 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10: 10 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  8 }{8:ABC}{9:abc                                     }{3:│}{1:  }{10: 11 }{8:DEF}{9:abc                                      }|
      {1:  }{10:  9 }common line                                {3:│}{1:  }{10: 12 }common line                                 |
      {1:  }{10: 10 }common line                                {3:│}{1:  }{10: 13 }common line                                 |
      {1:  }{10:    }{2:-------------------------------------------}{3:│}{1:  }{10: 14 }{4:DEF                                         }|
      {1:  }{10: 11 }common line                                {3:│}{1:  }{10: 15 }common line                                 |
      {1:  }{10: 12 }DEF                                        {3:│}{1:  }{10: 16 }DEF                                         |
      {1:  }{10: 13 }something                                  {3:│}{1:  }{10: 17 }^something                                   |
      {1:  }{10: 14 }                                           {3:│}{1:  }{10: 18 }                                            |
      {3:Xtest-functional-diff-screen-1.2 [+]              }{7:Xtest-functional-diff-screen-1                    }|
      :e                                                                                                  |
      ]])

    end)
  end)
end)
