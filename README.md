# API - Documentation

This repo will document and test the Smart Pension API.

## Run

You can execute the OpenAPI specification as a test using [Dredd](https://dredd.org)

      $ dredd openapi/api.yml http://api.pr-10509.dev.mypension365.ie/ --language="bundle exec dredd-hooks-ruby" --hookfiles=./hookfile.rb 

If you need some additional output to help debug issues, try turning up the log level by suffixing `--loglevel=debug`

## Setup

You will need NodeJS and Ruby to execute this documentation as test.

      $ yarn && bundle

## More Info

    https://dredd.org/en/latest/hooks/ruby.html
    https://swagger.io/specification/
