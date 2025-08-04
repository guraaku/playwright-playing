defmodule PlaywrightDemo do
  def run do
    {:ok, browser} = Playwright.launch(:chromium)
    page =
      browser |> Playwright.Browser.new_page()

    page
      |> Playwright.Page.goto("http://example.com")

    page
      |> Playwright.Page.title()
      |> IO.puts()

    browser
      |> Playwright.Browser.close()
  end
end
