module Abrizer
  class All

    def initialize(filename, output_dir, base_url)
      @filename = filename
      @output_directory = output_dir
      @base_url = base_url
    end

    def run
      Abrizer::Processor.process(@filename, @output_directory)
      Abrizer::ProgressiveMp4.new(@filename, @output_directory).create
      Abrizer::ProgressiveVp9.new(@filename, @output_directory).create
      Abrizer::PackageDashBento.new(@filename, @output_directory).package
      Abrizer::PackageHlsBento.new(@filename, @output_directory).package
      Abrizer::Captions.new(@filename, @output_directory).copy
      Abrizer::Sprites.new(@filename, @output_directory).create
      Abrizer::Canvas.new(@filename, @output_directory, @base_url).create
      Abrizer::Cleaner.new(@filename, @output_directory).clean
    end

  end
end