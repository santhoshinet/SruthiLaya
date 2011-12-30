-- SruthiOrchestraDL.ContentPage
CREATE TABLE [content_page] (
    [content_page_id] INT NOT NULL,         -- <internal-pk>
    [<_content>k___backing_field] VARCHAR(255) NULL, -- <Content>k__BackingField
    [<_i_d>k___backing_field] VARCHAR(255) NULL, -- <ID>k__BackingField
    [<_name>k___backing_field] VARCHAR(255) NULL, -- <Name>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_content_page] PRIMARY KEY ([content_page_id])
)
go

-- SruthiOrchestraDL.File
CREATE TABLE [fle] (
    [fle_id] INT NOT NULL,                  -- <internal-pk>
    [<_filedata>k___backing_field] image NULL, -- <Filedata>k__BackingField
    [<_filename>k___backing_field] VARCHAR(255) NULL, -- <Filename>k__BackingField
    [<_i_d>k___backing_field] VARCHAR(255) NULL, -- <ID>k__BackingField
    [<_mime_type>k___backing_field] VARCHAR(255) NULL, -- <MimeType>k__BackingField
    [voa_version] SMALLINT NOT NULL,        -- <internal-version>
    CONSTRAINT [pk_fle] PRIMARY KEY ([fle_id])
)
go

-- OpenAccessRuntime.Relational.sql.HighLowRelationalKeyGenerator
CREATE TABLE [voa_keygen] (
    [table_name] VARCHAR(64) NOT NULL,
    [last_used_id] INT NOT NULL,
    CONSTRAINT [pk_voa_keygen] PRIMARY KEY ([table_name])
)
go

