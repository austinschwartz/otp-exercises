defmodule Worker do
  def loop do
    receive do
      {sender_pid, :ping} ->
        send(sender_pid, {:ok, :pong})
      {sender_pid, :pong} ->
        send(sender_pid, {:ok, :ping})
    end
    loop
  end
end
