require 'watch'

class AutoTest
    def initialize(paths)
        @paths = paths
        run
    end

    def get_pathArray_from_file(fileName)
        @paths = []
        File.open(fileName, "r") do |file|
            file.each do |line|
                @paths.push line
            end
        end
    end

    def run
        addWatches makePaths
    end

    def addWatches(pathList)
        Watch.new(pathList) {
            runTests
        }
    end

    def runTests
        system "rake test:all"
    end

    def makePaths()
        pathList = "./{"
        @paths.each do |folder|
            pathList += folder + ","
        end
        pathList += "}/*"
    end
end
