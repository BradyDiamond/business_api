# (local business API)

#### By (Brady Diamond)

## Technologies Used

* _RUBY_
* _Rails_
* _postman_
* _faker_
* _will_paginate_
* _Factory Bot_
* _faker_

## Description

* _This application is an API that allows users to fetch information about restaurants_

## Setup/Installation Requirements

* _clone github repository_
* _install Postgres on your computer_
* _install correct version of Ruby (2.6.10)_
* _put gem "faker" and gem "will_paginate" into gemfile_
* _install bundler and run it in the projects directory from the console_
* _Type "rails s" into the console and navigate to local server "localhost:3000"_
* _navigate to postman_
* _enter http://localhost:3000/businesses/_
* _retrieve 20 businesses(get): http://localhost:3000/businesses_
* _retrieve desired page of businesses(get): http://localhost:3000/businesses/?page=(desired page number)_
* _add a business to DB(post): http://localhost:3000/businesses?name=[params]&location=[params]_
* _update a business DB(put): http://localhost:3000/businesses/:id?name=[params]&location=[params]_
* _delete a business from DB(delete): http://localhost:3000/businesses/:id_

## further exploration 
* _results return in a paginated structure (will_paginate) _
* _to see next page append request with "/?page=(desired page number)_


## Known Bugs

* _currently no known bugs_

## License
_licensed under the [MIT License] (LICENSE)_

_Copyright (c) _2022_ _Brady Diamond_ 
## Contact Information