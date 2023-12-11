schemas/dotenv.schema.json: generators/dotenv.schema.jsonnet
	jsonnet $< | jq -S | tee $@

blobslayer/DotenvSchema.py: schemas/dotenv.schema.json
	datamodel-codegen --input $< --input-file-type jsonschema --output $@

schemas: schemas/dotenv.schema.json blobslayer/DotenvSchema.py