defmodule CrashTest do
  use ExUnit.Case
  doctest Crash

  test "greets the world" do
    flow_a = Flow.from_enumerable(1_000..1_100)
    flow_b = Flow.from_enumerable(  500..1_100)

    flow = Flow.window_join(:inner, flow_a, flow_b, Flow.Window.global, & &1, & &1, fn a, a -> a end)

    assert flow |> Enum.sort |> Enum.take(3) == [1_000, 1_001, 1_002]
  end
end
