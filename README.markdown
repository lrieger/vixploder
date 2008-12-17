devigurator - a badly named project intended to simplify a common problem
=========================================================================

DESCRIPTION:
------------

A simple 'dotfiles' managment tool used to distribute common configuration files across multiple machines (initially consisting of a solid base for VIM, a few handy aliases for Rails development, and working with Git). The idea is not incredibly novel, but after realizing how poor the default VIM configuration is (on Mac OS X, at least), I wanted to be able to share mine with a few friends...

Devigurator is designed to give room for machine-/user-specific overrides. For example, the `.vimrc` file sources a `~/.local_vimrc` file sources a `~/.local_vimrc`. These 'local dotfiles' are intentionally left out of version control and intended for settings that are either machine-specific or something a user may not want to be in a publicly-available repository. A couple examples of such content would be aliases for SSH-ing into a server with a particular username (ie: 'site' aliased to 'ssh my_username@my_website.com'), or aliases to machine-specific paths for a project directory.

The VIM configuration is tailored to Ruby/Rails developers at this point, as that is what I currently work with/on. The intention of this project is not to be the "setup everyone uses without changing". Instead, fork it and set your own "sane" defaults for whatever your preferences are and then use that as your own base. The `.vimrc` file is extensively commented. Turning off a setting is as easy as putting a '"' (double-quote character) as the first character of the line. Modifying it is either intuitive or as easy as typing `:help <setting name>` (in vi) to check the possible parameters the setting accepts.

The `devigurate` command will backup & symlink any files named `.[filename]` in your home directory (which it replaces) with each file/directory in `lib/dotfiles` (of the devigurator directory structure). For example, there is a `vimrc` file in `lib/dotfiles`...which will be symlinked to `~/.vimrc`. Same goes for the `.vim` directory. The files are backed up to `~/devigurator_backup/`. If you want to revert the installation, you can remove the symlinks created and copy your files back into your home directory (there will be a script to do this for you soon...).


What's included:
----------------

### Solid Default VIM Configuration
The VIM configuration will be covered in more detail elsewhere (YTBD), but a few of the 'highlights' are:

- **Terminal & gVim color schemes (see 'Requirements' section for terminal support)**
    - Uses a 256-color theme which works in both terminal VIM and gVim (confirmed with MacVIM on Mac OS 10.5 only at this point). One thing to note is the requirement of a terminal application that supports 256-colors...which means the 'Terminal.app' on Mac OS is out. I personally use/recommend iTerm (http://iterm.sourceforge.net/) on Mac OS X, but the choice is yours.
- **Has Jamis Buck's (awesome) [FuzzyFinderTextmate](http://github.com/jamis/fuzzyfinder_textmate/tree/master) plugin bundled in and set up to '\-f' (backslash-f)**
    - ...which build's upon the equally-awesome original [FuzzyFinder](http://www.vim.org/scripts/script.php?script_id=1984) plugin by Takeshi NISHIDA
- **Mouse support is enabled** (yes, in the terminal too...)
- **Ships with a few other popular plugins (and maybe some not-so-popular that I find useful/cool), such as:**

  * __NERDTree.vim__ ([link](http://www.vim.org/scripts/script.php?script_id=1658))
        - Mapped to toggle with "F3" (and `Ctl+d` for TextMate users)
  * __Rails.vim__ ([link](http://www.vim.org/scripts/script.php?script_id=1567))
    - Handy plugin for jumping to associatd files. Try the following:
    - In a controller, type `:AS` (and hit enter). This opens up your associated "test" file for that controller (`xyx_spec.rb` if you use `Rspec`, `xyz_test.rb` if you use `Test::Unit`) in a new VIM window. Then, you can use Ctl+j/k to switch between those two files.
      - Same goes for model-to-unit tests.
    - In a controller method block (such as inside the `def index` method), type `:Rview` (and hit enter). This opens up your associated "view" file for that action.
      - Same goes for from the view to the associated controller action. (ie: `:Rcontroller` inside index.html.haml (or .erb, or whatever) will put you inside the `def index` method from the view
      - *NOTE:* You should be able to type `:Rvi[tab]` and it will auto-complete to ":Rview". This obviously applies to any of the other commands as well.
  * __Gist.vim__
    - Integration with [http://gist.github.com](http://gist.github.com)

     - Add your API token to the `[github]` section of your ~/.gitconfig file...like so:

                [github]
                     user = [your_username_here]
                     token = [your_github_token_here]

     - Then:

               :Gist -p # uploads entire file to a private gist in your account
               :Gist    # uploads entire file to a public gist, also linked to your account
               :Gist [gist # or private ID]  # reads Gist into VI for editing

     - Or, select the code you want to upload (in visual mode or with your mouse) and then execute the same commands and it will operate only on the selected code (ie: it won't send the entire file).

    - **NOTE:** If you are on Mac OS X, it automatically copies the URL of your new gist to your clipboard so you can paste it to your l33t-h4ck3r friends to help you out...

  * __Comments.vim__ ([link](http://www.vim.org/scripts/script.php?script_id=1528))
      - (Un)Comment lines of code by hitting `Ctl+c`
      - (Un)Comment blocks of code by selecting the lines you want to apply the command to and hit `Ctl+c`
          - You can highlight several lines of text by hitting `Shift+v` and using `j/k` to select lines you are interested in.
  * __Matchit.vim__ ([link](http://www.vim.org/scripts/script.php?script_id=39))
      - Up-to-date matchit.vim plugin which gives more advanced "matching" support for opening/closing sections of code...such as jumping from a `(` to it's associated `)` by hitting the `%`-key. Same goes for `def`/`end`, `if`/`end` , et cetera...
  * __MRU.vim (Most Recently Used files)__ ([link](http://www.vim.org/scripts/script.php?script_id=521))
      - Mapped to `Ctl+o` and shows your most recent 20 files you have opened in VIM
  * __Rspec.vim__
      - Adds shortcuts for running Rspec tests (read rspec.vim & modify to suit your preferences)
  * __Snippets.vim__ ([link](http://www.vim.org/scripts/script.php?script_id=1318))
      - Makes it dead-simple to add "snippets" of code which will auto-expand for you...similar to many other editors (TextMate obviously being a popular one in Rails-land). An example would be typing `dm[space]`...which would expand to:

         def !@method@!
           !@method_body@!
         end

    - ...and put your cursor in "insert" mode on the method name...ready for you to name the method. When you are done naming the method, you would hit `Esc-[tab]` to jump to the `!@method_body@!` area...in insert mode again.

    - A couple others are:

      - `bef[space]` becomes `before(:each)...`
      - `desit[space]` becomes `describe ...it...end end`
      - `iit[space]` beomes `it "should..." do...end`
      - et cetera...
    - Adding your own snippets is relatively simple as well...take a look at snippets.vim for examples

  * __Surround.vim__ ([link](http://www.vim.org/scripts/script.php?script_id=1697))
      - Simplifies "surrounding" text with a pattern of characters, such as quotes, parens, or opening & closing HTML/XML tags.
        - Select the text you want to "surround" (either with your mouse, or in "visual" mode) and press ":s" and type whatever text you want to surround the selectd text with...and hit enter. Revolutionary? No. Useful. Absolutely.
  * __SuperTab.vim__ ([link](http://www.vim.org/scripts/script.php?script_id=1643))
      - Gives tab-completion in VIM. Works pretty well with Ruby. I do not use this often, but...it's kind of neat...and can come in handy at times.
* **A couple useful abbreviations**

  - `lorem` is expanded to a paragraph of 'Lorem ipsum' text
  - `hh` becomes `=>`

* **Sane defaults most people familiar with other editors would expect**

  - Things like: arrow keys being correctly mapped, auto-indenting, being able to 'delete' to a previous line, soft tabs, et cetera...


### Shell Aliases
*NOTE:* For now, there is an `aliases` which will be symlinked to `~/.aliases`. Because `devigurator` is not sending any default shell profiles (yet), you need to source this file in the appropriate shell initiliazation file if you are interested in using the aliases outlined below (.profile, .tcshrc, .zshrc, .bashrc...whatever your preference).

#### SVN
    up : performs an 'svn update' and ignores externals

#### Git
    g    : git
    gst  : git status
    gl   : git pull
    gp   : git push
    gc   : git commit -v
    gca  : git commit -v -a
    gb   : git branch
    gba  : git branch -a
    ga   : git add

#### Rails
    ss   : ./script/server --debugger
    sc   : ./script/console
    sg   : ./script/generate
    sas  : ./script/autospec

#### Misc
    vil  : vi $_   # Opens last argument of previous command in vi
    mr   : mate app config db features lib public test spec vendor/plugins vendor/gems

REQUIREMENTS:
-------------

- **VIM compiled with Ruby support**
  - You can check this by starting up vi and typing `:version`. If you have a `+ruby`, you are set. If not, you need to either compile in support yourself, or find a package which has done it for you.
    - For Mac-users: MacVim comes with this built in, but you may want to check your 'terminal' version of VIM if you want to be able to use +vi+ in the terminal with the same feature-set. If you have [MacPorts](http://www.macports.org/) installed, you should be able to just run `sudo port install vim+ruby` and be all set.
- **A 256-color-capable terminal application**
  - For Mac-users: As of Version 2.0.1, build 240, Terminal.app on Mac OS X (10.5.5) does not meet this requirement. [iTerm](http://iterm.sourceforge.net/) does. Other applications may as well (recommendations welcome)...

INSTALL:
--------

- Install instructions to come...

LICENSE:
--------

(The MIT License)

Copyright (c) 2008 Tom Kersten

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
