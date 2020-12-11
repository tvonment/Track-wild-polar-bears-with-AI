CREATE TABLE [dbo].[PolarBears]
(
    [Id] [uniqueidentifier] NOT NULL,
    [CameraId] [nvarchar](16) NULL,
    [Latitude] [real] NULL,
    [Longitude] [real] NULL,
    [Url] [varchar](max) NULL,
    [Timestamp] [datetime] NULL,
    [IsPolarBear] [bit] NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
    WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
)
ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[PolarBears] ADD DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[PolarBears] ADD DEFAULT (getdate()) FOR [Timestamp]
GO

ALTER TABLE [dbo].[PolarBears] ADD DEFAULT ((0)) FOR [IsPolarBear]
GO