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
