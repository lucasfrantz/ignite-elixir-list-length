defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "when list is empty, should return 0" do
      list = []

      response = ListFilter.call(list)

      expected_response = 0

      assert response == expected_response
    end

    test "when there are no numbers in list, should return 0" do
      list = ["a", "b", "c"]

      response = ListFilter.call(list)

      expected_response = 0

      assert response == expected_response
    end

    test "when there are numbers in list, it should return the number of even numbers" do
      list = ["a", "b", "c", "1", "2", "3", "abc", "7"]

      response = ListFilter.call(list)

      expected_response = 3

      assert response == expected_response
    end
  end
end
