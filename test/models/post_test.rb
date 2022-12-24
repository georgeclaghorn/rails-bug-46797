require "test_helper"

class PostTest < ActiveSupport::TestCase
  100.times do |i|
    test "creating a post (##{i + 1})" do
      assert_changes -> { Post.count }, +1 do
        @post = Post.create! title: "Hello world ##{i + 1}"
      end

      BadJob.perform_later @post
    end
  end
end
