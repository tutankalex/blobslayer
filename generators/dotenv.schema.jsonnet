{
  description: 'schema for dotenv/environment variables',
  title: 'Dotenv Schema',
  type: 'object',
  properties: {
    STORAGE_DIRECTORY: {
      type: 'string',
      default: '_blobslayer-storage',
    },
    BLOBS_DIRECTORY: {
      type: 'string',
      default: '$STORAGE_DIRECTORY/blobs',
    },
    METADATA_DIRECTORY: {
      type: 'string',
      default: '$STORAGE_DIRECTORY/metadata',
    },
  },
}
