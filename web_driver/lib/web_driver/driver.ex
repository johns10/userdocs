defmodule WebDriver.Driver do
  use Hound.Helpers

  def start_link() do
    Agent.start_link(&new/0)
  end

  def new() do
    capabilities = setup()
    Hound.start_session()
  end

  def setup() do
    %{
      browserName: "chrome",
      server: true,
      host: "http://172.18.102.2",
      port: 4444,
      chromeOptions: %{
        "args" => ["--headless", "--disable-gpu"]
    }}
  end
end