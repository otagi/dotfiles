require 'rake'

desc "Zip all the old files"
task :backup do
  system %Q{mkdir "$HOME/backup-dotfiles"}
  files = Dir['*']
  files = files.map { |file_name| "~/.#{file_name}" }.join(' ')
  system %Q{zip -r ~/backup-dotfiles/backup-#{Time.now}.zip #{files}}
end

desc "install the dot files into user's home directory"
task :update_or_install_brew_deps do
  update_or_install_brew_deps
end

desc "install the dot files into user's home directory"
task :install do
  replace_all = true
  # update submodules
  system 'rake backup'
  system 'git submodule update --init --recursive'

  # link all the files
  Dir['*'].each do |file|
    next if %w[Rakefile README LICENSE Brewfile id_dsa.pub].include? file

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
  puts "Linking public ssh key"
  system %Q{rm "$HOME/.ssh/id_rsa.pub"}
  system %Q{ln -s "$PWD/id_rsa.pub" "$HOME/.ssh/id_rsa.pub"}

  #install brew packages
  update_or_install_brew_deps
end

def replace_file(file)
  system %Q{rm -rf "$HOME/.#{file}"}
  link_file(file)
end

def link_file(file)
  puts "linking ~/.#{file}"
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end

def update_or_install_brew_deps
  update = system %q{brew update}

  if system('which brew') &&  system('brew ls --versions brew-cask')
    update
  else
    system %q{ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"}
    update
  end

  system %Q{sh Brewfile}
end