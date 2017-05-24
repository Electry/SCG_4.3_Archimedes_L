.class public Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ShareCenterDataBaseHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "sharecenter"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NICK_NAME:Ljava/lang/String; = "nickname"

.field private static final SINA_ATTENTION_TABLE:Ljava/lang/String; = "sinaAttentionTable"

.field private static final TENCENT_ATTENTION_TABLE:Ljava/lang/String; = "tencentAttentionTable"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-string/jumbo v0, "sharecenter"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public deleteSinaUsers()V
    .locals 4

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 60
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "sinaAttentionTable"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public deleteTencentUsers()V
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 94
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "tencentAttentionTable"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public getSinaUsers()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 64
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v11, "users":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 66
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "name"

    aput-object v4, v2, v1

    .line 67
    .local v2, "col":[Ljava/lang/String;
    const-string/jumbo v1, "sinaAttentionTable"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 68
    .local v8, "cur":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 69
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 70
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-string/jumbo v1, "name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 72
    .local v9, "n":Ljava/lang/String;
    new-instance v10, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;

    invoke-direct {v10}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;-><init>()V

    .line 73
    .local v10, "user":Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    invoke-virtual {v10, v9}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->setScreenName(Ljava/lang/String;)V

    .line 74
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    .end local v9    # "n":Ljava/lang/String;
    .end local v10    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_1
    return-object v11
.end method

.method public getTencentUsers()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 98
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v12, "users":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;>;"
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 100
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "name"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v4, "nickname"

    aput-object v4, v2, v1

    .line 101
    .local v2, "col":[Ljava/lang/String;
    const-string/jumbo v1, "tencentAttentionTable"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 102
    .local v8, "cur":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 103
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 104
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const-string/jumbo v1, "name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 106
    .local v9, "name":Ljava/lang/String;
    const-string/jumbo v1, "nickname"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 107
    .local v10, "nickName":Ljava/lang/String;
    new-instance v11, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;

    invoke-direct {v11}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;-><init>()V

    .line 108
    .local v11, "user":Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;
    invoke-virtual {v11, v10}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;->setName(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v11, v9}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;->setScreenName(Ljava/lang/String;)V

    .line 110
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "nickName":Ljava/lang/String;
    .end local v11    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_1
    return-object v12
.end method

.method public insertSinaUsers(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;->deleteSinaUsers()V

    .line 50
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 51
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;

    .line 52
    .local v3, "user":Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 53
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "name"

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->getScreenName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v4, "sinaAttentionTable"

    const-string/jumbo v5, "name"

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 56
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v3    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    :cond_0
    return-void
.end method

.method public insertTencentUsers(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;>;"
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;->deleteTencentUsers()V

    .line 83
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 84
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;

    .line 85
    .local v3, "user":Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 86
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "name"

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;->getScreenName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v4, "nickname"

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string/jumbo v4, "tencentAttentionTable"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 90
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v3    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 37
    const-string v0, "CREATE TABLE sinaAttentionTable (name text not null)"

    .line 38
    .local v0, "createSinaTableSql":Ljava/lang/String;
    const-string v1, "CREATE TABLE tencentAttentionTable (name text not null, nickname text not null )"

    .line 39
    .local v1, "createTencentTableSql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "arg0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 46
    return-void
.end method
