require 'markdown'
require 'sinatra/base'

module CalculatorService

  class CalculatorApi < Sinatra::Base

    get '/' do
      <<-EOHTML
<!DOCTYPE html>
<html>
  <head>
    <title>Skeleton</title>
  </head>
  <body>
    #{Markdown.new(File.read('README.md')).to_html}
  </body>
</html>
EOHTML
    end
  end
end
