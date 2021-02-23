defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sumFromFile/1" do
    test "When there is a file with the given name, returns the sum of numbers" do
      response = Numbers.sumFromFile("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "When there is no file with the given name, returns an error" do
      response = Numbers.sumFromFile("b")

      expected_response = {:error, %{message: "Invalid file!"}}

      assert response == expected_response
    end
  end
end
