def with_fork
  read, write = IO.pipe
  pid = fork do
    read.close
    yield(write)
  end

  write.close
  Process.wait(pid)
  read.read
end
