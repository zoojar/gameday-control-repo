## site.pp ##

File { backup => false }

## Node Definitions ##

node default {
  # Find the first instance of `classes` in hiera data and includes unique values. Does not merge results.
  $classes = lookup('classes', Variant[String,Array[String]])
  case $classes {
    String[1]: {
      include $classes
    }
    Array[String[1],1]: {
      $classes.unique.include
    }
    default: {
      fail('This node did not receive any classification')
    }
  }
}
