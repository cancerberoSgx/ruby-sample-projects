# typed: true
require "test/unit"
include Test::Unit::Assertions
require_relative '../src/today'
require_relative '../src/todo'
require 'fileutils'

class TodayTest < Test::Unit::TestCase
  def test_folder
    assert_true Today.folder.end_with? '/.today'
  end

  def test_file
    assert_true Today.file.include? '/.today/'
  end

  def test_self_initialize
    FileUtils.rm_rf Today.folder if File.exists? Today.folder
    assert_false File.exists? Today.folder
    Today.initialize
    assert_true File.exists? Today.folder
  end

  def test_initialize
    assert_equal TodayTest.empty.session, Today.initial_state[:session]
  end

  def test_todos
    t = TodayTest.empty
    assert_instance_of Todos, t.todos
  end

  def self.empty
    FileUtils.rm_rf Today.folder
    Today.new
  end
end