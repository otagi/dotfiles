require 'rake'

desc 'Zip all the old files'
task :backup do
  system %Q{rm -rf "$HOME/backup-dotfiles"}
  system %Q{mkdir "$HOME/backup-dotfiles"}
  files = Dir['*']
  files = files.map { |file_name| "~/.#{file_name}" }.join(' ')

  # backup atom packages
  if system('which apm')
    system 'apm list --installed --bare > ~/.dotfiles/atom/package-list.txt'
  end

  system %(zip -r ~/backup-dotfiles/backup-#{Time.now}.zip #{files})
end

desc 'install the brew packages and deps'
task :update_or_install_brew_deps do
  update_or_install_brew_deps
end

desc 'install atom config and packages'
task :install_atom_config_and_packages do

  Dir.glob('atom/*').each do |file|
    file.slice! "atom/"
    next if %w[package-list.txt].include? file
    puts "#{file}"
    system %Q{rm -rf "$HOME/.atom/#{file}"}
    puts "linking #{file} to ~/.atom/#{file}"
    system %Q{ln -s "$PWD/atom/#{file}" "$HOME/.atom/#{file}"}
  end

  # install atom packages
  if system('which apm')
    system 'apm install --packages-file ~/.dotfiles/atom/package-list.txt'
  end
end

desc 'install the dot files into user home directory'
task :install do
  replace_all = true

  puts '==================================='
  puts 'Update system submodules'
  puts '==================================='

  system 'git submodule update --init --recursive'

  puts '==================================='
  puts 'Linking dotfiles'
  puts '==================================='

  # link all the files
  Dir['*'].each do |file|
    next if %w[Rakefile README LICENSE Brewfile id_dsa.pub atom].include? file

    if File.exist?(File.join(ENV['HOME'], ".#{file}"))
      if replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file}"
        end
      end
    else
      link_file(file)
    end
  end

  # Handle ssh pubkey on its own
  puts '======================='
  puts 'Linking public ssh key'
  puts '======================='

  system %Q{rm "$HOME/.ssh/id_rsa.pub"}
  system %Q{ln -s "$PWD/id_rsa.pub" "$HOME/.ssh/id_rsa.pub"}

  # Install brew packages
  puts '====================='
  puts 'Install brew packages'
  puts '====================='
  update_or_install_brew_deps

  puts '================================='
  puts 'Install atom config and packages'
  puts '================================='
  install_atom_config_and_packages

  puts '================================='
  puts 'Install latest ruby versions'
  puts '================================='
  system 'rbenv install 2.2.3'
  system 'rbenv global 2.2.3'

  install_basic_gems
end

def replace_file(file)
  system %Q{rm -rf "$HOME/.#{file}"}
  link_file(file)
end

def link_file(file)
  puts "linking ~/.#{file}"
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end

def install_atom_config_and_packages
  system 'rake install_atom_config_and_packages'
end

def update_or_install_brew_deps
  update = system 'brew update'

  if system('which brew') &&  system('brew ls --versions brew-cask')
    update
  else
    system %q{ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"}
    update
  end

  system 'sh Brewfile'
end

desc 'install basic gems'
task :install_basic_gems do
  install_basic_gems
end

def install_basic_gems
  puts '================================='
  puts 'Install basic gems'
  puts '================================='

  gems = %w(bundler awesome_print rbenv-rehash smusher pry rmagick git-flow powder)
  gems.each do |gem|
    system "gem install #{gem}"
  end
end
