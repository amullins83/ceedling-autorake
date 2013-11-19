require File.expand_path( File.dirname __FILE__ ) + "/autotest"

class Autorake
    def initialize configFilePath
        @plugin_root = File.expand_path( File.dirname __FILE__ ) + "/.."
        @configFilePath = configFilePath || @plugin_root + "/config/autorake.yml"
        @config = YAML.load_file(@configFilePath)
        start_watching
    end

    private

        def start_watching
            AutoTest.new @config[:autorake][:paths]
        end
end