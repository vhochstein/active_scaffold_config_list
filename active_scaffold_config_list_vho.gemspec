# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{active_scaffold_config_list_vho}
  s.version = "3.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Volker Hochstein"]
  s.date = %q{2011-11-23}
  s.description = %q{User may reorder and hide/show list columns}
  s.email = %q{activescaffold@googlegroups.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README"
  ]
  s.files = [
    ".document",
    "LICENSE.txt",
    "README",
    "Rakefile",
    "active_scaffold_config_list_vho.gemspec",
    "app/assets/stylesheets/active_scaffold_config_list-ie.css",
    "app/assets/stylesheets/active_scaffold_config_list.css.erb",
    "frontends/default/views/_show_config_list_form.html.erb",
    "frontends/default/views/_show_config_list_form_body.html.erb",
    "frontends/default/views/show_config_list_form.html.erb",
    "init.rb",
    "lib/active_scaffold/actions/config_list.rb",
    "lib/active_scaffold/config/config_list.rb",
    "lib/active_scaffold/helpers/config_list_helpers.rb",
    "lib/active_scaffold_config_list.rb",
    "lib/active_scaffold_config_list/config/core.rb",
    "lib/active_scaffold_config_list/engine.rb",
    "lib/active_scaffold_config_list/version.rb",
    "lib/active_scaffold_config_list_vho.rb",
    "uninstall.rb"
  ]
  s.homepage = %q{http://github.com/vhochstein/active_scaffold_config_list}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{User specific column configuration for ActiveScaffold}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_runtime_dependency(%q<active_scaffold_vho>, ["~> 3.1"])
    else
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<active_scaffold_vho>, ["~> 3.1"])
    end
  else
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<active_scaffold_vho>, ["~> 3.1"])
  end
end

