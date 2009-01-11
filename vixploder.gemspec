# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{vixploder}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tom Kersten"]
  s.date = %q{2009-01-11}
  s.description = %q{A simple 'dotfiles' management tool used to distribute common configuration files across multiple machines (initially consisting of a solid base for VIM, a few handy aliases for Rails development, and working with Git). The idea is not incredibly novel, but after realizing how poor the default VIM configuration is (at least on OS X), I wanted to be able to share mine with a few friends. Standard configuration files for other tools can easily be added to the tool, such as a core +.profile+, +.screenrc+ file, or Emacs config files...VIM is just the "test-case" for the distribution method at this point.  Vixploder is designed to give room for machine-/user-specific overrides. For example, the +.vimrc+ file sources a <tt>~/.local_vimrc</tt> file. These 'local dotfiles' are intentionally left out of version control and intended for settings that are either machine-specific or something a user may not want to be in a publicly-available repository. A couple examples of such content would be aliases for SSH-ing into a server with a particular username (ie: +site+ aliased to <tt>ssh my_username@my_website.com</tt>), or aliases to machine-specific paths for a project directory (both of these examples would be for your shell setup files, not vimrc, but the logic is the same...maybe you want a different colorscheme on a particular server in VIM).  The VIM configuration is tailored to Ruby/Rails developers at this point, as that is what I currently work with/on. The intention of this project is not to be the "setup everyone uses without changing". Instead, fork it and set your own "sane" defaults for whatever your preferences are and then use that as your own base. The +.vimrc+ file is extensively commented. Turning off a setting is as easy as putting a '"' (double-quote character) as the first character of the line. Modifying it is either intuitive or as easy as typing <tt>:help <setting name></tt> (in vi) to check the possible parameters the setting accepts.  The +vixplode+ command will backup & symlink any files named <tt>.[filename]</tt> in your home directory (which it replaces) with each file/directory in +lib/dotfiles+ (of the vixploder directory structure). For example, there is a +vimrc+ file in +lib/dotfiles+...which will be symlinked to <tt>~/.vimrc</tt>. Same goes for the +vim+ directory. The original files are backed up to <tt>~/vixploder_backup/</tt>. If you want to revert the installation, you can remove the symlinks created and copy your files back into your home directory (there will be a script to do this for you soon...).}
  s.email = ["tom.kersten@cosyntech.com"]
  s.has_rdoc = false
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{vixploder}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Tool for simplifying the distribution of environment configuration files ('dotfiles') across multiple *nix-based nodes.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<newgem>, [">= 1.1.0"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<newgem>, [">= 1.1.0"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<newgem>, [">= 1.1.0"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
