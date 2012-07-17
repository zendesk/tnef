module Tnef

  class Executable

    def self.path
      return @path if defined?(@path)

      @path = begin
        gem_local_path = File.expand_path('../../ext/tnef/bin/tnef', File.dirname(__FILE__))

        if File.executable?(gem_local_path)
          gem_local_path
        elsif other_path = system('which tnef > /dev/null')
          `which tnef`.strip
        else
          nil
        end
      end
    end

    def self.installed?
      !path.nil?
    end

  end

end
