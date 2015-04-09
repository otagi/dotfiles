class TP

  class << self

    def resque
      #resque_web
      set_title "Resque workers"
      system "COUNT=1 QUEUE=* RAILS_ENV=development bundle exec rake environment resque:work"
    end

    def sidekiq
      set_title "Sidekiq workers"
      system "bundle exec sidekiq -e development -C ./config/sidekiq.yml"
    end

    def resque_web
      system "resque-web ~/resque_conf.rb" unless resque_web_running?
    end

    def resque_web_running?
      `nmap localhost -p 5678 | grep 5678` =~ /5678\/tcp open/
    end

    def popthis
      set_title "Popthis"
      system "popthis ~/Sites/trustedplatform/tmp/sent_mails/"
    end

    def clear_log
      system "rm ~/Sites/trustedplatform/log/development.log"
      system "touch ~/Sites/trustedplatform/log/development.log"
    end

    def log
      set_title "Logging"
      system "tail -f ~/Sites/trustedplatform/log/development.log | grep -v \"SELECT locale FROM .tr8n_languages.\""
    end

    def mailcatcher
      system "mailcatcher"
    end

    def c
      set_title "Console"
      system "rails c"
    end

    def ts
      system "bundle exec rake ts:rebuild"
    end

    def ts_stop
      system "bundle exec rake ts:stop"
    end

    def ts_config
      system "bundle exec rake ts:config"
    end

    def test
      system "time rake test >&/Users/butsjoh/Desktop/test_output_#{Time.now.to_i}.txt"
    end

    def test_setup
      system "bundle exec rake -f MinRakefile test:setup"
    end

    def test_db_dump
      system "bundle exec rake -f MinRakefile test:db:dump_schema_to_sql"
    end

    def yard_server
      system "bundle exec yard server"
    end

    def unicorn
      set_title "Unicorn"
      system "bundle exec unicorn_rails -cconfig/unicorn.rb && echo 'RUNNING ...'"
    end

    def cucumber
      system "RAILS_ENV=test RUBYLIB=test bundle exec cucumber"
    end

    # def zombie
    #   `rvm use 1.9.2-p180 && rvmsudo zombie_passenger_killer`
    # end
    # def ps_start(port, daemonize = false)
    #   if daemonize
    #     system "rvmsudo passenger start -p #{port} --user=butsjoh -d"
    #   else
    #     system "rvmsudo passenger start -p #{port} --user=butsjoh"
    #   end
    # end
    #
    # def ps_stop(port)
    #   system "rvmsudo passenger stop -p #{port}"
    # end

    def set_title(title)
      system 'printf "\e]1;'+title+'\a"'
      system 'printf "\e]2;'+title+'\a"'
    end

    def method_missing(*args)
      method = args.shift
      available_methods = (self.methods - Object.methods - ['method_missing']).sort
      puts "Availble methods:\n\n"
      available_methods.each do |m|
        puts "- #{m}"
      end
      #puts "Unknown command: #{method}" unless [:to_hash, :to_ary].include?(method)
    end
  end

end

if ARGV[0]
  args = ARGV
  if args.size > 1
    eval "TP.#{args.shift}(#{args.join(', ')})"
  else
    eval "TP.#{args.shift}"
  end
end
