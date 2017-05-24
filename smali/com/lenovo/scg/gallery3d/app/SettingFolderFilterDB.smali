.class public Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;
.super Ljava/lang/Object;
.source "SettingFolderFilterDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "setting_folder_filter_data.db"

.field public static final FIELD_FOLDER_BUCKET_ID:Ljava/lang/String; = "_bucket_id"

.field public static final FIELD_FOLDER_NAME:Ljava/lang/String; = "_folder_name"

.field public static final FIELD_STORGE_SDCARD:Ljava/lang/String; = "_storge_sdcard"

.field private static final TAG:Ljava/lang/String; = "SettingFolderFilterDB"


# instance fields
.field private final CAMERA_CONTINUE_BLACK_FOLDER_DATA_TABLE:Ljava/lang/String;

.field private final DEFAULT_FOLDER_SHOW_DATA_TABLE:Ljava/lang/String;

.field private final FOLDER_SHOW_DATA_TABLE:Ljava/lang/String;

.field private final SQL_CMD_CREATE_CAMERA_BLACK_FOLDER_TABLE:Ljava/lang/String;

.field private final SQL_CMD_CREATE_DEFAULT_FOLDER_TABLE:Ljava/lang/String;

.field private final SQL_CMD_CREATE_TABLE:Ljava/lang/String;

.field private mDbHelper:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, "show_folder_table"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->FOLDER_SHOW_DATA_TABLE:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "show_default_folder_table"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->DEFAULT_FOLDER_SHOW_DATA_TABLE:Ljava/lang/String;

    .line 29
    const-string v0, "camera_continue_black_folder_table"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->CAMERA_CONTINUE_BLACK_FOLDER_DATA_TABLE:Ljava/lang/String;

    .line 31
    const-string v0, "CREATE TABLE if not exists show_folder_table(_bucket_id INTEGER,_folder_name TEXT,_storge_sdcard TEXT, PRIMARY KEY(_bucket_id,_storge_sdcard))"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->SQL_CMD_CREATE_TABLE:Ljava/lang/String;

    .line 34
    const-string v0, "CREATE TABLE if not exists show_default_folder_table(_bucket_id INTEGER,_folder_name TEXT,_storge_sdcard TEXT, PRIMARY KEY(_bucket_id,_storge_sdcard))"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->SQL_CMD_CREATE_DEFAULT_FOLDER_TABLE:Ljava/lang/String;

    .line 38
    const-string v0, "CREATE TABLE if not exists camera_continue_black_folder_table(_bucket_id INTEGER,_folder_name TEXT,_storge_sdcard TEXT, PRIMARY KEY(_bucket_id,_storge_sdcard))"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->SQL_CMD_CREATE_CAMERA_BLACK_FOLDER_TABLE:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;

    const-string/jumbo v1, "setting_folder_filter_data.db"

    invoke-direct {v0, p0, p1, v1}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;-><init>(Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->mDbHelper:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;

    .line 46
    return-void
.end method


# virtual methods
.method public closeDB()V
    .locals 4

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->mDbHelper:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SettingFolderFilterDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeDB error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteAll()V
    .locals 5

    .prologue
    .line 158
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->mDbHelper:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 161
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v2, "show_folder_table"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SettingFolderFilterDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteAll error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteCCFolderDb(Ljava/lang/String;I)V
    .locals 5
    .param p1, "bucketId"    # Ljava/lang/String;
    .param p2, "storgeId"    # I

    .prologue
    .line 97
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->mDbHelper:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 100
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v2, "camera_continue_black_folder_table"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_bucket_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_storge_sdcard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SettingFolderFilterDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteAll error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteItemFromDefalutTable(Ljava/lang/String;I)V
    .locals 5
    .param p1, "bucketId"    # Ljava/lang/String;
    .param p2, "storgeId"    # I

    .prologue
    .line 170
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->mDbHelper:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 173
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v2, "show_default_folder_table"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_bucket_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_storge_sdcard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SettingFolderFilterDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteAll error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public insertCCFolderDb(Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 85
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->mDbHelper:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 88
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v2, "camera_continue_black_folder_table"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v2, v3, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SettingFolderFilterDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertDefaultFolderDb error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public insertDb(Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 62
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->mDbHelper:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 65
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v2, "show_folder_table"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SettingFolderFilterDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertDb error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public insertDefaultFolderDb(Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 73
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->mDbHelper:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 76
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v2, "show_default_folder_table"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v2, v3, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SettingFolderFilterDB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertDefaultFolderDb error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public openDB()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public queryAll()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 109
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->mDbHelper:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 111
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 113
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v1, "show_folder_table"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_storge_sdcard="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mSwapSDCard:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v1, v8

    .line 120
    :goto_0
    return-object v1

    .line 115
    :catch_0
    move-exception v9

    .line 116
    .local v9, "e":Ljava/lang/Exception;
    const-string v1, "SettingFolderFilterDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryAll error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v1, v10

    .line 120
    goto :goto_0
.end method

.method public queryAllDefaultFolder()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 125
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->mDbHelper:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 127
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 129
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v1, "show_default_folder_table"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_storge_sdcard="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mSwapSDCard:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v1, v8

    .line 136
    :goto_0
    return-object v1

    .line 131
    :catch_0
    move-exception v9

    .line 132
    .local v9, "e":Ljava/lang/Exception;
    const-string v1, "SettingFolderFilterDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryAllDefaultFolder error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v1, v10

    .line 136
    goto :goto_0
.end method

.method public queryCameraBlackFolderbyBucketId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "bucketId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 141
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB;->mDbHelper:Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/SettingFolderFilterDB$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 143
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 145
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "camera_continue_black_folder_table"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_storge_sdcard="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->mSwapSDCard:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_bucket_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v1, v8

    .line 153
    :goto_0
    return-object v1

    .line 148
    :catch_0
    move-exception v9

    .line 149
    .local v9, "e":Ljava/lang/Exception;
    const-string v1, "SettingFolderFilterDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryAllDefaultFolder error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v1, v10

    .line 153
    goto :goto_0
.end method
