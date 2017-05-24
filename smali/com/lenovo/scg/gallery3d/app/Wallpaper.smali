.class public Lcom/lenovo/scg/gallery3d/app/Wallpaper;
.super Landroid/app/Activity;
.source "Wallpaper.java"


# static fields
.field private static final IMAGE_TYPE:Ljava/lang/String; = "image/*"

.field private static final KEY_PICKED_ITEM:Ljava/lang/String; = "picked-item"

.field private static final KEY_STATE:Ljava/lang/String; = "activity-state"

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_PHOTO_PICKED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Wallpaper"

.field private static final ThemeCenterPkg:Ljava/lang/String; = "com.lenovo.themecenter"


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mPickedItem:Landroid/net/Uri;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mState:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private cropImage(IIFF)Landroid/content/Intent;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "spotlightX"    # F
    .param p4, "spotlightY"    # F

    .prologue
    const/4 v4, 0x1

    .line 380
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    const-string v3, "image/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "outputX"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "outputY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "aspectX"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "aspectY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "spotlightX"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "spotlightY"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "scale"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "scaleUpIfNeeded"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "noFaceDetection"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "set-as-wallpaper"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 393
    .local v0, "request":Landroid/content/Intent;
    return-object v0
.end method

.method private getDefaultDisplaySize(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3
    .param p1, "size"    # Landroid/graphics/Point;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 92
    .local v0, "d":Landroid/view/Display;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    .line 93
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 97
    :goto_0
    return-object p1

    .line 95
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method private hasProperThemeCenter()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 344
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.lenovo.themecenter.wallpaper.crop"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.lenovo.themecenter"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 347
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 348
    const/4 v3, 0x1

    .line 353
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v3

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private hasProperThemeCenter2()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 358
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.ThirdWallpaperSupport"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.lenovo.themecenter"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 361
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 362
    const/4 v3, 0x1

    .line 367
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v3

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private hasThemeCenterCanCatchAction()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 277
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.lenovo.themecenter.wallpaper.crop"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.lenovo.themecenter"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 280
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 281
    const/4 v3, 0x1

    .line 286
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v3

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isNewGooglePhotosUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 101
    const-string v0, "com.google.android.apps.photos.contentprovider"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public convertToFileUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    const/4 v10, 0x0

    .line 231
    .local v10, "fileUri":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 232
    .local v9, "fileName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 234
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz p1, :cond_1

    .line 236
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 237
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 238
    if-eqz v7, :cond_0

    .line 239
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 240
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 241
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 243
    .local v6, "column_index":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 253
    .end local v6    # "column_index":I
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 254
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 255
    const/4 v7, 0x0

    .line 260
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    .line 261
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 264
    :cond_2
    return-object v10

    .line 246
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    goto :goto_0

    .line 249
    :catch_0
    move-exception v8

    .line 250
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    if-eqz v7, :cond_1

    .line 254
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 255
    const/4 v7, 0x0

    goto :goto_1

    .line 253
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 254
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 255
    const/4 v7, 0x0

    :cond_4
    throw v0
.end method

.method public getRealPath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 292
    const/4 v8, 0x0

    .line 293
    .local v8, "fileName":Ljava/lang/String;
    move-object v9, p1

    .line 294
    .local v9, "filePathUri":Landroid/net/Uri;
    if-eqz p1, :cond_1

    .line 295
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 297
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 299
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 300
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 301
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 303
    .local v6, "column_index":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 305
    .end local v6    # "column_index":I
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 313
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 306
    :cond_2
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 308
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public getThemeCenterVersion()I
    .locals 9

    .prologue
    .line 318
    const-string v4, ""

    .line 319
    .local v4, "verName":Ljava/lang/String;
    const/4 v0, -0x1

    .line 321
    .local v0, "bigVresion":I
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.lenovo.themecenter"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 322
    .local v3, "mPackageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 323
    const-string v6, "Wallpaper-getThemeCenterVersion"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "verName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v6, "ROW_V"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 327
    const-string v6, "ROW_V"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 331
    :cond_0
    const-string v6, "\\."

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 332
    .local v5, "verSplit":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 333
    const-string v6, "Wallpaper-getThemeCenterVersion"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bigVresion : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 339
    .end local v0    # "bigVresion":I
    .end local v3    # "mPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "verSplit":[Ljava/lang/String;
    .local v1, "bigVresion":I
    :goto_0
    return v1

    .line 334
    .end local v1    # "bigVresion":I
    .restart local v0    # "bigVresion":I
    :catch_0
    move-exception v2

    .line 335
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "Wallpaper-getThemeCenterVersion"

    const-string v7, "error ====="

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 336
    .end local v0    # "bigVresion":I
    .restart local v1    # "bigVresion":I
    goto :goto_0
.end method

.method public isThemeCenterInstalled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 372
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.lenovo.themecenter"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 397
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 398
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->setResult(I)V

    .line 399
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->finish()V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mState:I

    .line 403
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 404
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    if-eqz p1, :cond_0

    .line 75
    const-string v0, "activity-state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mState:I

    .line 76
    const-string/jumbo v0, "picked-item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    .line 78
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 19

    .prologue
    .line 107
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mIntent:Landroid/content/Intent;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mIntent:Landroid/content/Intent;

    .line 116
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 117
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mState:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 119
    :pswitch_0
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 121
    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.GET_CONTENT"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v17, Lcom/lenovo/scg/gallery3d/app/DialogPicker;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v16

    const-string v17, "image/*"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 122
    .local v9, "request":Landroid/content/Intent;
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v9, v1}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 125
    .end local v9    # "request":Landroid/content/Intent;
    :cond_2
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mState:I

    .line 129
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->getWallpaperDesiredMinimumWidth()I

    move-result v15

    .line 130
    .local v15, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->getWallpaperDesiredMinimumHeight()I

    move-result v3

    .line 131
    .local v3, "height":I
    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->getDefaultDisplaySize(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v10

    .line 132
    .local v10, "size":Landroid/graphics/Point;
    iget v0, v10, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    int-to-float v0, v15

    move/from16 v17, v0

    div-float v11, v16, v17

    .line 133
    .local v11, "spotlightX":F
    iget v0, v10, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    int-to-float v0, v3

    move/from16 v17, v0

    div-float v12, v16, v17

    .line 146
    .local v12, "spotlightY":F
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->isThemeCenterInstalled()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 147
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->hasThemeCenterCanCatchAction()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mIntent:Landroid/content/Intent;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mIntent:Landroid/content/Intent;

    move-object/from16 v16, v0

    const-string/jumbo v17, "wallpreviewtype"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 151
    .local v13, "type":Ljava/lang/String;
    if-nez v13, :cond_3

    .line 152
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3, v11, v12}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->cropImage(IIFF)Landroid/content/Intent;

    move-result-object v9

    .line 153
    .restart local v9    # "request":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->startActivity(Landroid/content/Intent;)V

    .line 223
    .end local v9    # "request":Landroid/content/Intent;
    .end local v13    # "type":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->finish()V

    goto/16 :goto_0

    .line 155
    .restart local v13    # "type":Ljava/lang/String;
    :cond_3
    new-instance v5, Landroid/content/Intent;

    const-string v16, "com.lenovo.themecenter.wallpaper.crop"

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v5, "mLockScreen":Landroid/content/Intent;
    const-string v16, "lockscreen"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 159
    const-string/jumbo v16, "wallpreviewtype"

    const-string v17, "lockscreen"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 165
    .local v14, "uri":Ljava/lang/String;
    const-string v16, "++++++++uri"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->getRealPath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, "realPath":Ljava/lang/String;
    const-string v16, "++++++++path"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string/jumbo v16, "path"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->convertToFileUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const/16 v16, 0x1

    :try_start_0
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 175
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 176
    :catch_0
    move-exception v16

    goto/16 :goto_1

    .line 160
    .end local v8    # "realPath":Ljava/lang/String;
    .end local v14    # "uri":Ljava/lang/String;
    :cond_5
    const-string/jumbo v16, "wallpaper"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 161
    const-string/jumbo v16, "wallpreviewtype"

    const-string/jumbo v17, "wallpaper"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 181
    .end local v5    # "mLockScreen":Landroid/content/Intent;
    .end local v13    # "type":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3, v11, v12}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->cropImage(IIFF)Landroid/content/Intent;

    move-result-object v9

    .line 182
    .restart local v9    # "request":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 184
    .end local v9    # "request":Landroid/content/Intent;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->getThemeCenterVersion()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_a

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mIntent:Landroid/content/Intent;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    .line 187
    new-instance v5, Landroid/content/Intent;

    const-string v16, "android.intent.action.ThirdWallpaperSupport"

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .restart local v5    # "mLockScreen":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    .line 190
    .local v14, "uri":Landroid/net/Uri;
    const-string v16, "Wallpaper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "The picture\'s uri: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {v14}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->isNewGooglePhotosUri(Landroid/net/Uri;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 193
    invoke-virtual {v14}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, "pathUri":Ljava/lang/String;
    const-string v16, "content"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    const-string v17, "/ACTUAL"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, "newUri":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 197
    .end local v6    # "newUri":Ljava/lang/String;
    .end local v7    # "pathUri":Ljava/lang/String;
    :cond_8
    const-string v16, "Wallpaper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "The new uri: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    if-eqz v14, :cond_1

    .line 199
    const-string/jumbo v16, "path"

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const/16 v16, 0x1

    :try_start_1
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 207
    :catch_1
    move-exception v16

    goto/16 :goto_1

    .line 211
    .end local v5    # "mLockScreen":Landroid/content/Intent;
    .end local v14    # "uri":Landroid/net/Uri;
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3, v11, v12}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->cropImage(IIFF)Landroid/content/Intent;

    move-result-object v9

    .line 212
    .restart local v9    # "request":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 215
    .end local v9    # "request":Landroid/content/Intent;
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3, v11, v12}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->cropImage(IIFF)Landroid/content/Intent;

    move-result-object v9

    .line 216
    .restart local v9    # "request":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 219
    .end local v9    # "request":Landroid/content/Intent;
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3, v11, v12}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->cropImage(IIFF)Landroid/content/Intent;

    move-result-object v9

    .line 220
    .restart local v9    # "request":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "saveState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    const-string v0, "activity-state"

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 84
    const-string/jumbo v0, "picked-item"

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 86
    :cond_0
    return-void
.end method
