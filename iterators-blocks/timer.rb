

def timer
  time_now = Time.now
  # Something will be executed
  yield
  Time.now - time_now
end

timer do
  # Really advanced mathematics here
  sleep(5)
end

timer do
  # Really advanced mathematics here
  (1..10000).to_a.shuffle.sort
end


def greetings(name)
  "Hey #{name}"
end

greetings("Paul")
greetings("Rob")
