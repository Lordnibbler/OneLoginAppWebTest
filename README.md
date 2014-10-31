Example of using cucumber for test automation.


Page Object Documentation:  http://rubydoc.info/github/mlaguren/OneLogin-PageObjects/frames

## Getting Started

```sh
# grab the submodules
git submodule update --init

# install the bundler dependencies
bundle

# copy an environment configuration file
cp config/environments/production.yml.tmp config/environments/<some_environment>.yml

# configure it to your liking, with your OL username/password
vi config/environments/<some_environment>.yml

# run the test suite
ENVIRONMENT=<some_environment> cucumber
```
