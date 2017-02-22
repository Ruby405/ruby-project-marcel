require 'test_helper'
require 'rack'

class Marcel::ContentType::NameTest < ActiveSupport::TestCase
  each_content_type_fixture('name') do |file, name, content_type|
    test "gets type for #{content_type} by filename from #{name}" do
      assert_equal content_type, Marcel::ContentType.for(file, name: name)
    end
  end
end
