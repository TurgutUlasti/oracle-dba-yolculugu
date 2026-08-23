-- Aktif process'leri sorgulama (session + background process eşleştirmesi)
SELECT sid, process, program
FROM v$session JOIN v$bgprocess USING (paddr)
WHERE v$session.status = 'ACTIVE';

-- Data Files sorgulama (tablespace, dosya yolu, boyut - byte)
SELECT tablespace_name, file_name, bytes
FROM dba_data_files;

-- Data Files sorgulama (boyut MB cinsinden, daha okunur)
SELECT tablespace_name, file_name, ROUND(bytes / 1024 / 1024, 2) AS size_mb
FROM dba_data_files;

-- Redo Log Files sorgulama
SELECT a.*, b.bytes
FROM v$logfile a, v$log b
WHERE a.group# = b.group#;

-- Parametre sorgulama (tüm init parametreleri)
SELECT * FROM v$parameter;

-- Control Files parametresini sorgulama
SHOW PARAMETER control_files;

-- PFILE / SPFILE parametresini sorgulama
SHOW PARAMETER pfile;
