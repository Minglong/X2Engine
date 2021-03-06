DROP TABLE IF EXISTS x2_media;
/*&*/
CREATE TABLE x2_media(
    id              INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    associationType VARCHAR(40) NOT NULL,
    associationId   INT,
    uploadedBy      VARCHAR(50),
    fileName        VARCHAR(100),
    `name`          VARCHAR(255),
    nameId          VARCHAR(250) DEFAULT NULL,
    createDate      BIGINT,
    lastUpdated     BIGINT,
    private         TINYINT DEFAULT 0,
    description     TEXT,
    mimetype        VARCHAR(250),
    filesize        INT,
    dimensions      VARCHAR(40),
    drive           TINYINT DEFAULT 0,
    UNIQUE(nameId)
) COLLATE = utf8_general_ci;
/*&*/
INSERT INTO `x2_modules`
(`name`,    title,    visible,    menuPosition,    searchable,    editable,    adminOnly,    custom,    toggleable)
VALUES
('media', 'Media', 1, 16, 0, 0, 0, 0, 0);
/*&*/
INSERT INTO x2_fields
(modelName, fieldName, attributeLabel, modified, custom, `type`, required, readOnly, linkType, searchable, isVirtual, relevance, keyType)
VALUES
('Media', 'id',              'ID',               0, 0, 'varchar',    0, 1, NULL, 0, 0, '',       'PRI'),
('Media', 'associationType', 'Association Type', 0, 0, 'varchar',    1, 1, NULL, 0, 0, '',       NULL),
('Media', 'associationId',   'Association ID',   0, 0, 'int',        0, 1, NULL, 0, 0, '',       NULL),
('Media', 'uploadedBy',      'Uploaded By',      0, 0, 'assignment', 0, 1, NULL, 0, 0, '',       NULL),
('Media', 'fileName',        'File Name',        0, 0, 'varchar',    0, 0, NULL, 1, 0, 'High',   NULL),
('Media', 'name',            'Title',            0, 0, 'varchar',    0, 0, NULL, 1, 0, 'High',   NULL),
('Media', 'nameId',          'NameID',           0, 0, 'varchar',    0, 1, NULL, 1, 0, 'High',   'FIX'),
('Media', 'createDate',      'Create Date',      0, 0, 'dateTime',   0, 1, NULL, 0, 0, '',       NULL),
('Media', 'lastUpdated',     'Last Updated',     0, 0, 'dateTime',   0, 1, NULL, 0, 0, '',       NULL),
('Media', 'private',         'Private',          0, 0, 'int',        0, 0, NULL, 0, 0, '',       NULL),
('Media', 'description',     'Description',      0, 0, 'text',       0, 0, NULL, 1, 0, 'Medium', NULL),
('Media', 'mimetype',        'MIME Info',        0, 0, 'varchar',    0, 1, NULL, 0, 0, '',       NULL),
('Media', 'filesize',        'File Size',        0, 0, 'int',        0, 1, NULL, 0, 0, '',       NULL),
('Media', 'drive',           'Google Drive',     0, 0, 'int',        0, 0, NULL, 0, 0, '',       NULL),
('Media', 'dimensions',      'Dimensions',       0, 0, 'varchar',    0, 1, NULL, 0, 0, '',       NULL);
/*&*/
INSERT INTO x2_media
(associationType, fileName)
VALUES
('bg','santacruznight_blur.jpg'),
('bg','MBayInn.jpg'),
('bg','Lassen.jpg'),
('bg','Divers.jpg'),
('bg','Ravendale.jpg'),
('bg','DeathValley.jpg'),
('bg','Redwoods2.jpg'),
('bg','CanneryRow.jpg'),
('bg','BeerCanRace.jpg'),
('bg','AnaNuevo.jpg'),
('bg','DavenportCA.jpg'),
('bg','WaddellBeach.jpg'),
('bg','Mushrooms.jpg');
('bg','pigeon_point.jpg'),
/*&*/
INSERT INTO x2_media
(id, associationType, fileName)
VALUES
(1000, 'notificationSound','X2_Notification.mp3'),
(1001, 'loginSound','X2_Drums.mp3'),
(1002, 'loginSound','X2_EDM.mp3'),
(1003, 'loginSound','X2_Jazz.mp3'),
(1004, 'loginSound','X2_orchestra.mp3'),
(1005, 'loginSound','X2_piano.mp3'),
(1006, 'loginSound','X2_rock_and_roll.mp3'),
(2000, 'loginSound','X2_China.mp3'),
(2001, 'loginSound','X2_India.mp3'),
(2002, 'loginSound','X2_Latin_America.mp3');
/*&*/
INSERT INTO `x2_media` (`id`, `associationType`, `uploadedBy`, `fileName`, `description`, `private`) VALUES
('-1', "theme",'admin','Default','{"themeName":"Default","background":"","content":"","text":"","link":"","highlight1":"","highlight2":"","private":"0"}',0),
('-2', "theme",'admin','Terminal','{"themeName":"Terminal","background":"221E1E","content":"2E2E2E","text":"F7F7F7","link":"F2921D","highlight1":"1B1B1B","highlight2":"074E8C"}',0),
('-3', "theme",'admin','Twilight','{"themeName":"Twilight","background":"0C1021","content":"0C1021","text":"F7F7F7","link":"FBDE2D","highlight1":"303E49","highlight2":"FF6400"}',0),
('-4', "theme",'admin','Guava','{"themeName":"Guava","background":"F0AA81","content":"D6CCAD","text":"42282F","link":"2D4035","highlight1":"74A588","highlight2":"D6655A"}',0),
('-5', "theme",'admin','Archaic','{"themeName":"Archaic","background":"1E1E20","content":"2A2C2B","text":"FFFFFF","link":"D9CB9E","highlight1":"1E1E20","highlight2":"A5382B"}',0),
('-6', "theme",'admin','Phosphor','{"themeName":"Phosphor","background":"050320","content":"1E1E20","text":"ECF4EA","link":"44FF24","highlight1":"131A19","highlight2":"226B15"}',0);
