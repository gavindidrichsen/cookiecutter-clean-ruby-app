# {{cookiecutter.app_title}}

{{cookiecutter.short_description}}

## Installation

Add this line to your application's Gemfile:

```ruby
gem '{{cookiecutter.gem_name}}'
```

And then execute:

```bash
> bundle
```

Or install it yourself as:

```bash
> gem install {{cookiecutter.gem_name}}
```

## Usage

First ensure that direnv is configured on your local machine so that the presence of a .envrc file will automatically trigger environment setup.

### Setup .envrc

Copy .envrc_sample to .envrc and update accordingly.  Only if you are working with a remote host, then set the REMOTE_DIR to ensure that upload and download of all files can be achieved with the helper script in ./bin/transfer_files.

Run ``direnv allow`` to setup the environment.


If a remote host is being used, then transfer all local files to the host using ``transfer_files upload``.  To download files on the remote host, then ``transfer_files download``.  Both of these will start a local daemon that will continue to transfer changes.  In the case of the upload, then the fswatch on Mac will listen for changes and then do the upload only when changes are saved.  In the case of the download, rsync will be run every 10 seconds to pull down the remote changes.

Run ``setup`` to install all the required gems locally.  If you see and error like the following, make sure to upgrade your bundler with ``gem install bundler`` and then re-run ``setup``

```bash
...
...
Resolving dependencies...
Bundler could not find compatible versions for gem "bundler":
  In Gemfile:
    bundler (~> 2.0)

  Current Bundler version:
    bundler (1.17.2)
This Gemfile requires a different version of Bundler.
Perhaps you need to update Bundler by running `gem install bundler`?

Could not find gem 'bundler (~> 2.0)' in any of the relevant sources:
  the local ruby installation
```

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/{{cookiecutter.github_user}}/{{cookiecutter.repo_name}}. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Cookiecutter::Clean::Ruby::App project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/{{cookiecutter.github_user}}/{{cookiecutter.repo_name}}/blob/master/CODE_OF_CONDUCT.md).
