# PL/SQL

Bu klasör, PL/SQL kursu sürecinde yazdığım pratik örnekleri içerir. ✅ Tamamlandı.

## Dosyalar

### Temel Yapılar & Veri Tipleri
| Dosya | Konu |
|---|---|
| `anonim_block_gun_ismi.sql` | DECLARE/BEGIN/END anonim blok temelleri (TO_CHAR ile gün ismi) |
| `char-vs-varchar2.sql` | CHAR ve VARCHAR2 veri tiplerinin farkı |
| `type-rowtype-kullanimi.sql` | %TYPE ve %ROWTYPE ile dinamik değişken/kayıt tanımlama |
| `binary-integer-overflow.sql` | BINARY_INTEGER, PLS_INTEGER, NUMBER tipleri ve overflow |
| `Table-Based-Records.sql` | Tablo tabanlı kayıt (record) yapıları |

### Kontrol Yapıları
| Dosya | Konu |
|---|---|
| `IF.sql` | IF/ELSIF/ELSE koşul yapıları |
| `Case1.sql`, `Case2.sql` | CASE ifadesi kullanımı |
| `Basic Loop1.sql`, `Basic Loop2.sql` | Temel LOOP yapısı |
| `ForLoop1.sql`, `For2.sql` | FOR LOOP kullanımı |
| `WHILE.sql` | WHILE LOOP kullanımı |
| `nested1.sql`, `Nested2.sql` | İç içe (nested) döngüler |

### Cursor'lar
| Dosya | Konu |
|---|---|
| `Cursors1.sql`, `Cursors2.sql` | Implicit/Explicit cursor temelleri, SQL%FOUND, SQL%ROWCOUNT |
| `CursorsV1.sql`, `CursorsV2.sql`, `CursorsV3.sql` | Cursor varyasyonları |
| `Cursor-Based.sql` | Cursor tabanlı işlemler |
| `Cursors_ForUpdate.sql` | FOR UPDATE cursor kilitleme |
| `Cursors_Referance.sql` | REF CURSOR kullanımı |
| `Nested_Cursors.sql` | İç içe cursor kullanımı |
| `Prior-Next.sql` | Collection PRIOR/NEXT metotları |

### Exception Handling
| Dosya | Konu |
|---|---|
| `exception-handling.sql` | Temel hata yönetimi |
| `Predefined_Exceptions.sql` | Oracle'ın önceden tanımlı exception'ları |
| `Interanlly-Defined-Exceptions.sql` | Dahili tanımlı exception'lar |
| `User_Defined_Exceptions.sql` | Kullanıcı tanımlı exception'lar |

### Fonksiyon & Prosedürler
| Dosya | Konu |
|---|---|
| `fonksiyon-bolum-adi.sql` | CREATE FUNCTION temel örneği |
| `Storde_Procedure1.sql` | Stored procedure temelleri |
| `Nested_Procdure.sql`, `Nested_Procdure2.sql` | İç içe prosedürler |
| `Nested_function1.sql`, `Nested_Functions2.sql` | İç içe fonksiyonlar |
| `Recursive_Functions.sql` | Recursive (özyinelemeli) fonksiyonlar |
| `Developer-Defiend.sql`, `Developer-Defiend-2.sql` | Kullanıcı tanımlı fonksiyon örnekleri |

### Package
| Dosya | Konu |
|---|---|
| `Packages.sql` | Package spec/body yapısı, custom type ve cursor içeren örnek |

### Collections
| Dosya | Konu |
|---|---|
| `Array.sql`, `Varray.sql` | VARRAY kullanımı |
| `Colection.sql` | Collection temelleri |
| `assoc.sql` | Associative array (index-by table) |
| `Extend_Methot.sql`, `Delete_Methot.sql`, `Trim_Methot.sql` | Collection metotları |
| `First-Last-Count-Limit.sql` | Collection FIRST/LAST/COUNT/LIMIT |
| `Exists.sql` | Collection EXISTS kontrolü |

### Trigger
| Dosya | Konu |
|---|---|
| `Trigger1.sql` | Temel trigger yapısı |
| `Triggers_log.sql`, `Log_Triggers.sql` | Log tutan trigger örnekleri |

### Dynamic SQL & DCL
| Dosya | Konu |
|---|---|
| `Staticsql.sql` | Static SQL kullanımı |
| `Dynamic.sql` | EXECUTE IMMEDIATE ile Dynamic SQL, DDL/DCL örnekleri |

### BLOB İşlemleri
| Dosya | Konu |
|---|---|
| `Blob.sql` | Dosya sisteminden veritabanına BLOB (resim) aktarımı |
| `Blob_Procedure.sql` | BLOB işlemlerinin procedure olarak yazımı |

### Diğer
| Dosya | Konu |
|---|---|
| `savepoint.sql` | Transaction SAVEPOINT kullanımı |
| `sequence.sql` | SEQUENCE oluşturma ve kullanma |
| `usercreatedandgrand.sql` | Kullanıcı oluşturma ve yetki (GRANT) verme |

## Öne Çıkan Konular

- Anonim blok yapısı, veri tipleri, %TYPE / %ROWTYPE
- Kontrol yapıları: IF, CASE, LOOP, WHILE, FOR
- Cursor türleri: implicit, explicit, REF CURSOR, FOR UPDATE
- Exception handling: predefined, internally-defined, user-defined
- Fonksiyon, prosedür, nested/recursive yapılar
- Package (spec + body)
- Collections: VARRAY, associative array, ilgili metotlar
- Trigger ve log mekanizmaları
- Dynamic SQL (EXECUTE IMMEDIATE) ve DCL komutları
- BLOB işlemleri (dosya → veritabanı)
- Transaction yönetimi, sequence, kullanıcı/yetki yönetimi