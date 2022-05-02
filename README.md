# zd-prune-script
A script using jq to prune and redact Zendesk exports

# TO USE

## INSTALL JQ
* Use `brew install jq`

## CHOOSE FIELDS
* Using a sample JSON file, determine what fields should remain.
* Fields in `custom_fields[]` should be added to the `$mapping` variable at the tip of the script.

## FROM-TO
* Update the source and destination with the syntax `from_file.json > to_file.json`

## EXECUTE!
* Run the script from the same directory as the json files

## Special Thanks
Thanks to user [Philippe in StackOverflow](https://stackoverflow.com/questions/72065049/jq-filtering-a-massive-json-with-nested-arrays-efficiently) for guiding the way to getting the `custom_fields` into the finished file. 
