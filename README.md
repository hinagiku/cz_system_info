# CzSystemInfo

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/cz_system_info`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cz_system_info'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install cz_system_info

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test-unit` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/cz_system_info.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## CPU
puts "Load Average: " + CzSystemInfo::CPU.load_avg.join(", ")

puts "Processor Info:"
puts "==============="
pp CzSystemInfo::CPU.processors

puts "CPU STATS:"
puts "=========:"

pp CzSystemInfo::CPU.cpu_stats

## memory
p CzSystemInfo::Memory.memory                # Hash of all information

p CzSystemInfo::Memory.total                 # Total memory, no swap
p CzSystemInfo::Memory.total(extended: true) # Total memory, include swap
There's also the free, used and load module methods.

## uptime
puts "Days: " + CzSystemInfo::Uptime.days.to_s
puts "Hours: " + CzSystemInfo::Uptime.hours.to_s
puts "Minutes: " + CzSystemInfo::Uptime.minutes.to_s
puts "Seconds: " + CzSystemInfo::Uptime.seconds.to_s
puts "Uptime: " + CzSystemInfo::Uptime.uptime
puts "DHMS: " + CzSystemInfo::Uptime.dhms.join(', ')
puts "Boot Time: " + CzSystemInfo::Uptime.boot_time.to_s

print "\nTest successful\n"

## filesystem
p Filesystem::VERSION

filesystem_stat = CzSystemInfo::Filesystem.stat('/')
puts "Path: " + filesystem_stat.path
puts "Block size: " + filesystem_stat.block_size.to_s
puts "Fragment size: " + filesystem_stat.fragment_size.to_s
puts "Blocks free: " + filesystem_stat.blocks_free.to_s
puts "Blocks available: " + filesystem_stat.blocks_available.to_s
puts "Bytes free: " + filesystem_stat.bytes_free.to_s
puts "Bytes available: " + filesystem_stat.bytes_available.to_s
puts "Files/Inodes: " + filesystem_stat.files.to_s
puts "Files/Inodes free: " + filesystem_stat.files_free.to_s
puts "Files/Inodes available: " + filesystem_stat.files_available.to_s
puts "File system id: " + filesystem_stat.filesystem_id.to_s
puts "Base type: " + filesystem_stat.base_type if filesystem_stat.base_type
puts "Flags: " + filesystem_stat.flags.to_s
puts "Name max: " + filesystem_stat.name_max.to_s
