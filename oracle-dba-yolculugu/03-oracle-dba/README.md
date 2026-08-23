# 03-oracle-dba

Bu klasör, BTK Akademi Oracle DBA 1 kursu sürecinde yazdığım pratik sorguları
ve notları içerir. 🔄 Devam ediyor (Section 1-8 tamamlandı).

Lab ortamı: VirtualBox üzerinde Oracle Linux 8.10 + Oracle Database 19c (SID: ORCL).

## Dosyalar

| Dosya | Konu |
|---|---|
| `instance-ve-dosya-sorgulari.sql` | Aktif process'ler, datafile, redo log, control file ve parametre sorgulama |

## Öne Çıkan Konular

- Instance ve session yönetimi (`v$session`, `v$bgprocess`)
- Datafile ve tablespace bilgisi sorgulama (`dba_data_files`)
- Redo log dosyaları sorgulama (`v$logfile`, `v$log`)
- Parametre dosyası (PFILE/SPFILE) ve control file sorgulama
- Startup/Shutdown modları
- Listener yönetimi ve dinamik servis kaydı (`lsnrctl`, `ALTER SYSTEM REGISTER`)
- EM Express ile veritabanı yönetimi (HTTPS port yapılandırması)

## Notlar

- Bu bölümde `sql` (SQLcl) kullanıyorum, SQL*Plus yerine.
- Uzak bağlantı için PuTTY üzerinden SSH kullanmaya başladım.
