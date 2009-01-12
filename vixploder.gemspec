# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{vixploder}
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tom Kersten"]
  s.date = %q{2009-01-12}
  s.description = %q{A simple 'dotfiles' management tool used to distribute common configuration files across multiple machines.}
  s.email = ["tom@whitespur.com"]
  s.executables = ["vixplode"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "lib/dotfiles/vim/doc/NERD_tree.txt", "lib/dotfiles/vim/doc/fakeclip.txt", "lib/dotfiles/vim/doc/matchit.txt", "lib/dotfiles/vim/doc/project.txt", "lib/dotfiles/vim/doc/rails.txt", "lib/dotfiles/vim/doc/snippets_emu.txt", "lib/dotfiles/vim/doc/surround.txt"]
  s.files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "bin/256colors2.pl", "bin/colortest", "bin/vixplode", "lib/dotfiles/aliases", "lib/dotfiles/gvimrc", "lib/dotfiles/vim/.VimballRecord", "lib/dotfiles/vim/after/ftplugin/actionscript_snippets.vim", "lib/dotfiles/vim/after/ftplugin/aspvbs_snippets.vim", "lib/dotfiles/vim/after/ftplugin/c_snippets.vim", "lib/dotfiles/vim/after/ftplugin/css_snippets.vim", "lib/dotfiles/vim/after/ftplugin/django_model_snippets.vim", "lib/dotfiles/vim/after/ftplugin/django_template_snippets.vim", "lib/dotfiles/vim/after/ftplugin/f-script_snippets.vim", "lib/dotfiles/vim/after/ftplugin/haskell_snippets.vim", "lib/dotfiles/vim/after/ftplugin/html_snippets.vim", "lib/dotfiles/vim/after/ftplugin/java_snippets.vim", "lib/dotfiles/vim/after/ftplugin/javascript_snippets.vim", "lib/dotfiles/vim/after/ftplugin/latex_snippets.vim", "lib/dotfiles/vim/after/ftplugin/logo_snippets.vim", "lib/dotfiles/vim/after/ftplugin/markdown_snippets.vim", "lib/dotfiles/vim/after/ftplugin/movable_type_snippets.vim", "lib/dotfiles/vim/after/ftplugin/objc_snippets.vim", "lib/dotfiles/vim/after/ftplugin/ocaml_snippets.vim", "lib/dotfiles/vim/after/ftplugin/perl_snippets.vim", "lib/dotfiles/vim/after/ftplugin/php_snippets.vim", "lib/dotfiles/vim/after/ftplugin/phpdoc_snippets.vim", "lib/dotfiles/vim/after/ftplugin/propel_snippets.vim", "lib/dotfiles/vim/after/ftplugin/python_snippets.vim", "lib/dotfiles/vim/after/ftplugin/rails_snippets.vim", "lib/dotfiles/vim/after/ftplugin/ruby_snippets.vim", "lib/dotfiles/vim/after/ftplugin/sh_snippets.vim", "lib/dotfiles/vim/after/ftplugin/slate_snippets.vim", "lib/dotfiles/vim/after/ftplugin/smarty_snippets.vim", "lib/dotfiles/vim/after/ftplugin/symfony_snippets.vim", "lib/dotfiles/vim/after/ftplugin/tcl_snippets.vim", "lib/dotfiles/vim/after/ftplugin/template_toolkit_snippets.vim", "lib/dotfiles/vim/after/ftplugin/tex_snippets.vim", "lib/dotfiles/vim/after/ftplugin/xhtml_snippets.vim", "lib/dotfiles/vim/autoload/fakeclip.vim", "lib/dotfiles/vim/autoload/rails.vim", "lib/dotfiles/vim/autoload/rubycomplete.vim", "lib/dotfiles/vim/colors/inkpot.vim", "lib/dotfiles/vim/colors/ir_black.vim", "lib/dotfiles/vim/colors/ir_black_mod.vim", "lib/dotfiles/vim/colors/railscasts.vim", "lib/dotfiles/vim/colors/rubyblue.vim", "lib/dotfiles/vim/colors/twilight.vim", "lib/dotfiles/vim/colors/twilight2.vim", "lib/dotfiles/vim/colors/wombat256.vim", "lib/dotfiles/vim/compiler/eruby.vim", "lib/dotfiles/vim/compiler/ruby.vim", "lib/dotfiles/vim/compiler/rubyunit.vim", "lib/dotfiles/vim/doc/NERD_tree.txt", "lib/dotfiles/vim/doc/fakeclip.txt", "lib/dotfiles/vim/doc/matchit.txt", "lib/dotfiles/vim/doc/project.txt", "lib/dotfiles/vim/doc/rails.txt", "lib/dotfiles/vim/doc/snippets_emu.txt", "lib/dotfiles/vim/doc/surround.txt", "lib/dotfiles/vim/doc/tags", "lib/dotfiles/vim/filetype.vim", "lib/dotfiles/vim/ftdetect/gist.vim", "lib/dotfiles/vim/ftdetect/ruby.vim", "lib/dotfiles/vim/ftplugin/eruby.vim", "lib/dotfiles/vim/ftplugin/ruby.vim", "lib/dotfiles/vim/indent/eruby.vim", "lib/dotfiles/vim/indent/ruby.vim", "lib/dotfiles/vim/plugin/NERD_tree.vim", "lib/dotfiles/vim/plugin/comments.vim", "lib/dotfiles/vim/plugin/fakeclip.vim", "lib/dotfiles/vim/plugin/fuzzyfinder.vim", "lib/dotfiles/vim/plugin/fuzzyfinder_textmate.vim", "lib/dotfiles/vim/plugin/gist.vim", "lib/dotfiles/vim/plugin/gitdiff.vim", "lib/dotfiles/vim/plugin/matchit.vim", "lib/dotfiles/vim/plugin/mru.vim", "lib/dotfiles/vim/plugin/rails.vim", "lib/dotfiles/vim/plugin/rspec.vim", "lib/dotfiles/vim/plugin/snippets.vim", "lib/dotfiles/vim/plugin/snippetsEmu.vim", "lib/dotfiles/vim/plugin/supertab.vim", "lib/dotfiles/vim/plugin/surround.vim", "lib/dotfiles/vim/ref_vimrc", "lib/dotfiles/vim/ruby/fuzzy_file_finder.rb", "lib/dotfiles/vim/syntax/eruby.vim", "lib/dotfiles/vim/syntax/haml.vim", "lib/dotfiles/vim/syntax/mkd.vim", "lib/dotfiles/vim/syntax/ruby.vim", "lib/dotfiles/vim/syntax/sass.vim", "lib/dotfiles/vimrc", "lib/vixplode/cli.rb", "lib/vixploder.rb", "script/console", "script/destroy", "script/generate", "spec/spec.opts", "spec/spec_helper.rb", "spec/vixplode_cli_spec.rb", "spec/vixploder_spec.rb", "tasks/rspec.rake"]
  s.has_rdoc = false
  s.post_install_message = <<-END_OF_MESSAGE
    To use vixploder, execute:

      vixplode

    ...and try out VI. If you have issues with a blinking background
    or errors on startup, confirm your system meets all the
    requirements outlined in the README (http://bit.ly/m9Wk).

    If you want to "undo" the changes, you can unlink the newly created
    files in your home directory and restore them from ~/vixploder_backups:

      mv ~/vixploder_backups/.* ~/

    For more information on vixploder, see https://github.com/tomkersten/vixploder

    NOTE: To create private Gists on http://gist.github.com, make sure you have set up
    your username/token entries in your ~/.gitconfig file (refer to: http://bit.ly/OCgg)

    Enjoy!
  END_OF_MESSAGE

  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{vixploder}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Tool for simplifying the distribution of environment configuration files ('dotfiles') across multiple *nix-based nodes.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<newgem>, [">= 1.2.3"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
