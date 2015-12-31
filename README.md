# Beanssh

Beanssh (Bean SSH) is a SSH front-end, designed to streamline SSH logins to your AWS EB instances in your AWS VPC.
As the entire point of EB is automatic instance creation and destruction with new IP assignment, your instances' IP addresses will change frequently.
AWS provides `eb ssh` for SSH login to **Public** EB instances; the purpose of this gem is to provide a way to login to **Private** EB instances in your VPC, without the manual overhead of looking up the instance IP addresses every time.


## Installation

Ensure that your AWS access and region are configured in `~/.aws`.

Install the gem via:

    $ gem install beanssh

Ensure that the gem executable in your *PATH*.


## Usage

Invoke the gem executable: `beanssh`, and follow the prompts.


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/beanssh. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
