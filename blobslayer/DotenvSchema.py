# generated by datamodel-codegen:
#   filename:  dotenv.schema.json
#   timestamp: 2023-12-11T04:16:23+00:00

from __future__ import annotations

from typing import Optional

from pydantic import BaseModel


class DotenvSchema(BaseModel):
    BLOBS_DIRECTORY: Optional[str] = '$STORAGE_DIRECTORY/blobs'
    METADATA_DIRECTORY: Optional[str] = '$STORAGE_DIRECTORY/metadata'
    STORAGE_DIRECTORY: Optional[str] = '_blobslayer-storage'