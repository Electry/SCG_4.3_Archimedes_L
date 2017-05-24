.class public Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WidgetDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$1;,
        Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "launcher.db"

.field private static final DATABASE_VERSION:I = 0x5

.field private static final FIELD_ALBUM_PATH:Ljava/lang/String; = "albumPath"

.field private static final FIELD_APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field private static final FIELD_IMAGE_URI:Ljava/lang/String; = "imageUri"

.field private static final FIELD_PHOTO_BLOB:Ljava/lang/String; = "photoBlob"

.field private static final FIELD_RELATIVE_PATH:Ljava/lang/String; = "relativePath"

.field private static final FIELD_WIDGET_TYPE:Ljava/lang/String; = "widgetType"

.field private static final INDEX_ALBUM_PATH:I = 0x3

.field private static final INDEX_APPWIDGET_ID:I = 0x4

.field private static final INDEX_IMAGE_URI:I = 0x1

.field private static final INDEX_PHOTO_BLOB:I = 0x2

.field private static final INDEX_RELATIVE_PATH:I = 0x5

.field private static final INDEX_WIDGET_TYPE:I = 0x0

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TABLE_WIDGETS:Ljava/lang/String; = "widgets"

.field private static final TAG:Ljava/lang/String; = "PhotoDatabaseHelper"

.field public static final TYPE_ALBUM:I = 0x2

.field public static final TYPE_SHUFFLE:I = 0x1

.field public static final TYPE_SINGLE_PHOTO:I = 0x0

.field private static final WHERE_APPWIDGET_ID:Ljava/lang/String; = "appWidgetId = ?"

.field private static final WHERE_WIDGET_TYPE:Ljava/lang/String; = "widgetType = ?"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "widgetType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "imageUri"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "photoBlob"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "albumPath"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "appWidgetId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "relativePath"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 120
    return-void
.end method

.method private restoreData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 164
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    .line 165
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 166
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "appWidgetId"

    iget v4, v0, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;->widgetId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string/jumbo v3, "widgetType"

    iget v4, v0, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string v3, "imageUri"

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;->imageUri:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string/jumbo v3, "photoBlob"

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;->imageData:[B

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 170
    const-string v3, "albumPath"

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;->albumPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string/jumbo v3, "widgets"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 175
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 173
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 177
    return-void
.end method

.method private saveData(Landroid/database/sqlite/SQLiteDatabase;ILjava/util/ArrayList;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    const/4 v0, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 129
    if-gt p2, v6, :cond_3

    .line 130
    const-string/jumbo v1, "photos"

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "appWidgetId"

    aput-object v0, v2, v4

    const-string/jumbo v0, "photoBlob"

    aput-object v0, v2, v5

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 131
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 159
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 133
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    new-instance v9, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;-><init>(Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$1;)V

    .line 135
    .local v9, "entry":Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    const/4 v0, 0x0

    iput v0, v9, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;->type:I

    .line 136
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;->widgetId:I

    .line 137
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v9, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;->imageData:[B

    .line 138
    invoke-virtual {p3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 141
    .end local v9    # "entry":Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 143
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    if-ne p2, v0, :cond_0

    .line 144
    const-string/jumbo v1, "photos"

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "appWidgetId"

    aput-object v0, v2, v4

    const-string/jumbo v0, "photoBlob"

    aput-object v0, v2, v5

    const-string v0, "imageUri"

    aput-object v0, v2, v6

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 145
    .restart local v8    # "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 147
    :goto_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    new-instance v9, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;-><init>(Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$1;)V

    .line 149
    .restart local v9    # "entry":Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    const/4 v0, 0x0

    iput v0, v9, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;->type:I

    .line 150
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;->widgetId:I

    .line 151
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v9, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;->imageData:[B

    .line 152
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;->imageUri:Ljava/lang/String;

    .line 153
    invoke-virtual {p3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 156
    .end local v9    # "entry":Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    :catchall_1
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public deleteEntry(I)V
    .locals 7
    .param p1, "appWidgetId"    # I

    .prologue
    .line 311
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 312
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v2, "widgets"

    const-string v3, "appWidgetId = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v2, "PhotoDatabaseHelper"

    const-string v3, "Could not delete photo from database"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getEntries(I)Ljava/util/List;
    .locals 12
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 266
    const/4 v8, 0x0

    .line 268
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 269
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "widgets"

    sget-object v2, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "widgetType = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 270
    if-nez v8, :cond_0

    .line 271
    const-string v1, "PhotoDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "query fail: null cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v10, v11

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v10

    .line 274
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :try_start_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 275
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    new-instance v1, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    const/4 v2, 0x0

    invoke-direct {v1, v8, v2}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;-><init>(Landroid/database/Cursor;Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$1;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 279
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    :catch_0
    move-exception v9

    .line 280
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "PhotoDatabaseHelper"

    const-string v2, "Could not load widget from database"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v10, v11

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Throwable;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    :cond_1
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method public getEntry(I)Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    .locals 11
    .param p1, "appWidgetId"    # I

    .prologue
    const/4 v10, 0x0

    .line 248
    const/4 v8, 0x0

    .line 250
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 251
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "widgets"

    sget-object v2, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->PROJECTION:[Ljava/lang/String;

    const-string v3, "appWidgetId = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 252
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 253
    :cond_0
    const-string v1, "PhotoDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "query fail: empty cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appWidgetId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v1, v10

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v1

    .line 256
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v8, v2}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;-><init>(ILandroid/database/Cursor;Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$1;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 257
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v9

    .line 258
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "PhotoDatabaseHelper"

    const-string v2, "Could not load photo from database"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v1, v10

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 124
    const-string v0, "CREATE TABLE widgets (appWidgetId INTEGER PRIMARY KEY, widgetType INTEGER DEFAULT 0, imageUri TEXT, albumPath TEXT, photoBlob BLOB, relativePath TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 181
    const/4 v2, 0x4

    if-ge p2, v2, :cond_0

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->saveData(Landroid/database/sqlite/SQLiteDatabase;ILjava/util/ArrayList;)V

    .line 186
    const-string v2, "PhotoDatabaseHelper"

    const-string v3, "destroying all old data."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v2, "DROP TABLE IF EXISTS photos"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 188
    const-string v2, "DROP TABLE IF EXISTS widgets"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 191
    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->restoreData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V

    .line 194
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    :cond_0
    const/4 v2, 0x5

    if-ge p2, v2, :cond_1

    .line 196
    :try_start_0
    const-string v2, "ALTER TABLE widgets ADD COLUMN relativePath TEXT"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_1
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "PhotoDatabaseHelper"

    const-string v3, "Failed to add the column for relative path."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPhoto(ILandroid/net/Uri;Landroid/graphics/Bitmap;)Z
    .locals 8
    .param p1, "appWidgetId"    # I
    .param p2, "imageUri"    # Landroid/net/Uri;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 212
    :try_start_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    mul-int/lit8 v3, v6, 0x4

    .line 213
    .local v3, "size":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 214
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p3, v6, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 215
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 217
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 218
    .local v4, "values":Landroid/content/ContentValues;
    const-string v6, "appWidgetId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    const-string/jumbo v6, "widgetType"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    const-string v6, "imageUri"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string/jumbo v6, "photoBlob"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 223
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 224
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v6, "widgets"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    const/4 v5, 0x1

    .line 228
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "size":I
    .end local v4    # "values":Landroid/content/ContentValues;
    :goto_0
    return v5

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Throwable;
    const-string v6, "PhotoDatabaseHelper"

    const-string/jumbo v7, "set widget photo fail"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setWidget(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "albumPath"    # Ljava/lang/String;
    .param p4, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 234
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 235
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "appWidgetId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string/jumbo v2, "widgetType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    const-string v2, "albumPath"

    invoke-static {p3}, Lcom/lenovo/scg/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string/jumbo v2, "relativePath"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "widgets"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    const/4 v2, 0x1

    .line 243
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return v2

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "PhotoDatabaseHelper"

    const-string/jumbo v3, "set widget fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateEntry(Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;)V
    .locals 5
    .param p1, "entry"    # Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    .prologue
    .line 291
    iget v2, p1, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;->widgetId:I

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->deleteEntry(I)V

    .line 293
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 294
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "appWidgetId"

    iget v3, p1, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;->widgetId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 295
    const-string/jumbo v2, "widgetType"

    iget v3, p1, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    const-string v2, "albumPath"

    iget-object v3, p1, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;->albumPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v2, "imageUri"

    iget-object v3, p1, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;->imageUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string/jumbo v2, "photoBlob"

    iget-object v3, p1, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;->imageData:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 299
    const-string/jumbo v2, "relativePath"

    iget-object v3, p1, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "widgets"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "PhotoDatabaseHelper"

    const-string/jumbo v3, "set widget fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
