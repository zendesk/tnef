require 'test_helper'

describe Tnef do

  describe Tnef::Executable do
    it 'should find the tnef executable' do
      Tnef::Executable.path.must_match(/.*\/tnef$/)
    end
  end

  describe '::unpack' do
    before do
      @tnef_file_path = File.expand_path('../ext/tnef/tests/files/datafiles/two-files.tnef', File.dirname(__FILE__))
      assert(File.exist?(@tnef_file_path), "#{@tnef_file_path} does not exist")
    end

    it 'should unpack the file' do
      files = []

      Tnef.unpack(File.new(@tnef_file_path)) do |file|
        files << File.basename(file)
      end

      files.must_equal(["AUTHORS", "README"])
    end

    it 'should clean up after itself' do
      files = []

      Tnef.unpack(File.new(@tnef_file_path)) do |file|
        files << file
      end

      files.wont_be_empty

      files.each do |file|
        assert(!File.exist?(file), "#{file} still exists")
      end
    end

    it 'should silently fail' do
      Tnef.unpack(File.new(__FILE__)) do |file|
        assert(false, "the block should not be yielded")
      end
    end

  end

end
