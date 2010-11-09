require 'guard'
require 'guard/guard'
require 'rubygems'

module Guard
  class Ego < Guard

    # ================
    # = Guard method =
    # ================

    # Call once when guard starts
    def start
      true
    end

    # Call with Ctrl-C signal (when Guard quit)
    def stop
      true
    end

    # Call with Ctrl-Z signal
    def reload
      true
    end

    # Call with Ctrl-/ signal
    def run_all
      true
    end

    # Call on file(s) modifications
    def run_on_change(paths)
      restart_guard
    end

    private
      def restart_guard
        UI.info "Guard is now restarting..."
        if Gem::Version.create(::Guard::VERSION) > Gem::Version.create('0.2.2')
          ::Guard.guards.each { |g| ::Guard.supervised_task g, :stop }
        else
          ::Guard.guards.all? { |g| g.stop }
        end
        ::Guard.start
      end
  end
end
