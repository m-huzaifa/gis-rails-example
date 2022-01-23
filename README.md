
# Using Google Maps API (v3) with Rails To Implment GIS Example

## Ruby on Rails

This application requires:

- Ruby 2.6.3
- Rails 5.2.3

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

## Getting Started

```bash
git clone git@github.com:m-huzaifa/gis-rails-example.git
cd gis-rails-example
```

## Setup

```shell
bin/setup
```
Run this again if you want a clear instance of **database**.

### Set API Key
**Note:** Rename local_env_example to local_env and put API key

## Server

```shell
rails s
```

# Using as GeoJSon
### GeoJson endpoint is also added
- **Route:** ```shell api/v1/geo_json?search=---```
- **Note:** search paramter can be any street address, coordinates or IP address
