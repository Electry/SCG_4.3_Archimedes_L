.class Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WeiboProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 193
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 194
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 198
    const-string v0, "CREATE TABLE imagecache ( _id INTEGER PRIMARY KEY AUTOINCREMENT,url TEXT UNIQUE ON CONFLICT REPLACE,postdata TEXT,filename TEXT,lastaccesstime TEXT,reserved TEXT,CONSTRAINT UNKEY UNIQUE(url));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 208
    const-string v0, "CREATE TABLE user_info ( _id INTEGER PRIMARY KEY AUTOINCREMENT,user_uid INTEGER UNIQUE ON CONFLICT REPLACE,nick TEXT,portrait TEXT,access_token TEXT,expire_time TEXT,reposts INTEGER,statuses INTEGER,followers INTEGER,description TEXT,location TEXT,verified INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    const-string v0, "CREATE TABLE homelist_time ( _id INTEGER PRIMARY KEY AUTOINCREMENT,status_uid INTEGER UNIQUE ON CONFLICT REPLACE,user_uid INTEGER,nick TEXT,portrait TEXT,content TEXT,pic TEXT,time INTEGER,source TEXT,isretweeted INTEGER,count_attitude INTEGER,count_repost INTEGER,count_comment INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 254
    const-string v0, "CREATE TABLE wb_draft ( _id INTEGER PRIMARY KEY AUTOINCREMENT,status_uid INTEGER,nick TEXT,action INTEGER,content TEXT,pic_url TEXT,pic_lat TEXT,pic_long TEXT,share_type INTEGER,draft_time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 267
    const-string v0, "CREATE TABLE whitelist ( _id INTEGER PRIMARY KEY AUTOINCREMENT,user_uid INTEGER UNIQUE ON CONFLICT REPLACE,nick TEXT,isshield INTEGER,portrait TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 278
    const-string/jumbo v0, "panhui4_WeiboProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v0, "DROP TABLE IF EXISTS imagecache"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 282
    const-string v0, "DROP TABLE IF EXISTS homelist_person"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 283
    const-string v0, "DROP TABLE IF EXISTS homelist_time"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 284
    const-string v0, "DROP TABLE IF EXISTS user_info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 285
    const-string v0, "DROP TABLE IF EXISTS wb_draft"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 286
    const-string v0, "DROP TABLE IF EXISTS whitelist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 290
    return-void
.end method
