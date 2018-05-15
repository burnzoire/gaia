# Gaia
A store of Gaia Archive files using Apache Cassandra and Rails.

## Setup
### Database
Run a cassandra instance with a simple docker command:
`docker run --name cassandra -d -p 9042:9042 cassandra:3.11`

Create the database:
`bundle exec rake cequel:keyspace:create`

Sync schema:
`bundle exec rake cequel:migrate`

### Import data
Use the following command on any GaiaSource CSV 
`rake gaia:import[lib/gaia_source_files/GaiaSource_sample.csv]`


## Related
* [Datamodel descriptions](https://gea.esac.esa.int/archive/documentation/GDR1/datamodel/Ch1/gaia_source.html)
* [Gaia CSV downloads](http://cdn.gea.esac.esa.int/Gaia/)
