# A sample Guardfile
# More info at https://github.com/guard/guard#readme

group :server do
  guard :shotgun do
    watch(/.+/) # watch *every* file in the directory
  end
end

guard 'rspec' do
  watch(/.+\.rb/) { 'spec' } # watch *every* Ruby file in the directory
end

