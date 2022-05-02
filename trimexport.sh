#!/usr/bin/env bash

# Requires jq `brew install jq`

jq '{"os"          : 360009524294,
     "app_name"    : 360009524374,
     "phone_model" : 1500001979841,
     "issue_type"  : 360009524854} as $mapping |
.results |= map(
   { created_at,subject,description,recipient,tags,
   } +
   (.custom_fields as $custom_fields |
    $mapping |
    with_entries(
      .value |= (. as $id | $custom_fields[]?|select(.id==$id).value)
    )
   )
)' from_file > to_file
