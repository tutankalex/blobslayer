schemas/dotenv.schema.json: generators/dotenv.schema.jsonnet
	jsonnet $< | jq -S | tee $@

blobslayer/DotenvSchema.py: schemas/dotenv.schema.json
	datamodel-codegen --input $< --input-file-type jsonschema --output $@

schemas/file-metadata.schema.json: generators/file-metadata.schema.jsonnet
	jsonnet $< | jq -S | tee $@

blobslayer/FileMetadataSchema.py: schemas/file-metadata.schema.json
	datamodel-codegen --input $< --input-file-type jsonschema --output $@

schemas: \
	schemas/file-metadata.schema.json \
	blobslayer/FileMetadataSchema.py \
	schemas/dotenv.schema.json \
	blobslayer/DotenvSchema.py