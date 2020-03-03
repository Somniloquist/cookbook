# will paginate works only on active record relations by default, since I would like paginate recipe search results
# (which is an array) I need to tell rails to include it.
require 'will_paginate/array'