test "catches the right exception" do
  assert_raise(RuntimeError) do
    raise RuntimeError
  end
end

test "raises if the expectation is not met" do
  assert_raise(Cutest::AssertionFailed) do
    assert_raise(RuntimeError) do
      raise ArgumentError
    end
  end
end

test "returns the error message" do
  message = assert_raise(RuntimeError) do
    raise RuntimeError, "error"
  end

  assert_equal "error", message
end

