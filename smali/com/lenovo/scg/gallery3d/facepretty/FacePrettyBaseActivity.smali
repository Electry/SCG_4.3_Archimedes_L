.class public Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;
.super Landroid/app/Activity;
.source "FacePrettyBaseActivity.java"


# static fields
.field private static final SAVEPATH:Ljava/lang/String;


# instance fields
.field protected facePrettyPref:Landroid/content/SharedPreferences;

.field private isFromGoldbox:Z

.field protected mFaceBitmapUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

.field protected mSelectedFaceID:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Pictures/Gallery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->SAVEPATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->isFromGoldbox:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->mFaceBitmapUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->mSelectedFaceID:I

    return-void
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 139
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 140
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 141
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static getAvailableSpace()J
    .locals 8

    .prologue
    const-wide/16 v4, -0x2

    .line 180
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "state":Ljava/lang/String;
    const-string v3, "checking"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    const-wide/16 v4, -0x1

    .line 198
    :cond_0
    :goto_0
    return-wide v4

    .line 184
    :cond_1
    const-string/jumbo v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->SAVEPATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 190
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    sget-object v3, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->SAVEPATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    goto :goto_0

    .line 197
    .end local v1    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v3

    .line 198
    const-wide/16 v4, -0x3

    goto :goto_0
.end method

.method private isAlreadyInExeCmdList(ILjava/util/List;)Z
    .locals 3
    .param p1, "faceID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 444
    .local p2, "cmds":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;>;"
    const/4 v1, 0x0

    .line 445
    .local v1, "isInList":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 446
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->getFaceid()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 447
    const/4 v1, 0x1

    .line 445
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    :cond_1
    return v1
.end method

.method public static saveImage([BLjava/lang/String;)Ljava/io/File;
    .locals 10
    .param p0, "data"    # [B
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 145
    if-nez p1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-object v2

    .line 148
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v6, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->SAVEPATH:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 150
    :cond_2
    new-instance v5, Landroid/os/StatFs;

    sget-object v6, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->SAVEPATH:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 151
    .local v5, "sf":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    const-wide/32 v8, 0x100000

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 160
    .local v3, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .local v4, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v4, p0}, Ljava/io/OutputStream;->write([B)V

    .line 162
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    if-eqz v4, :cond_4

    .line 170
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 173
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_0

    .line 171
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 173
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_0

    .line 163
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 164
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    if-eqz v3, :cond_0

    .line 170
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 171
    :catch_2
    move-exception v1

    .line 172
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 165
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 166
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 168
    if-eqz v3, :cond_0

    .line 170
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 171
    :catch_4
    move-exception v1

    .line 172
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 168
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_3

    .line 170
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 173
    :cond_3
    :goto_4
    throw v6

    .line 171
    :catch_5
    move-exception v1

    .line 172
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 168
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 165
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2

    .line 163
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_1

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :cond_4
    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto/16 :goto_0
.end method


# virtual methods
.method public findFaceRectInBitmap(Landroid/graphics/Bitmap;)[Landroid/graphics/Rect;
    .locals 3
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 108
    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-object v1

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->mFaceBitmapUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->findFaceRects(Landroid/graphics/Bitmap;)[Landroid/graphics/Rect;

    move-result-object v0

    .line 110
    .local v0, "faceRects":[Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Rect;

    goto :goto_0
.end method

.method protected getCircleRotationLand(Landroid/view/View;FF)F
    .locals 12
    .param p1, "mView"    # Landroid/view/View;
    .param p2, "touch_x"    # F
    .param p3, "touch_y"    # F

    .prologue
    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v1, v8

    .line 397
    .local v1, "crc_x":F
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v7, v8

    .line 398
    .local v7, "top":F
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v8

    int-to-float v0, v8

    .line 400
    .local v0, "bottom":F
    add-float v8, v7, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float v2, v8, v9

    .line 401
    .local v2, "crc_y":F
    float-to-int v8, p2

    float-to-int v9, v1

    if-ge v8, v9, :cond_0

    .line 402
    move p2, v1

    .line 404
    :cond_0
    sub-float v3, p2, v1

    .line 405
    .local v3, "dx":F
    sub-float v4, p3, v2

    .line 409
    .local v4, "dy":F
    div-float v6, v4, v3

    .line 410
    .local v6, "tanRotation":F
    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    const-wide v10, 0x4066800000000000L    # 180.0

    mul-double/2addr v8, v10

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    double-to-float v5, v8

    .line 412
    .local v5, "rotation":F
    float-to-int v8, v5

    const/16 v9, -0x2d

    if-ge v8, v9, :cond_1

    .line 413
    const/high16 v5, -0x3dcc0000    # -45.0f

    .line 416
    :cond_1
    float-to-int v8, v5

    const/16 v9, 0x2d

    if-le v8, v9, :cond_2

    .line 417
    const/high16 v5, 0x42340000    # 45.0f

    .line 421
    :cond_2
    return v5
.end method

.method public getCircleSize(Landroid/content/Context;I)F
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method protected getFacePrettyPref()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->facePrettyPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->facePrettyPref:Landroid/content/SharedPreferences;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->facePrettyPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method protected getIntFromPrefecences(Landroid/content/SharedPreferences;Ljava/lang/String;)I
    .locals 1
    .param p1, "mPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "KEY"    # Ljava/lang/String;

    .prologue
    .line 454
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getScreenHeight()I
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->getScreenSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method protected getScreenSize()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 210
    .local v0, "mPoint":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 212
    return-object v0
.end method

.method protected getScreenWidth()I
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->getScreenSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method protected getSelectWhatKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "select_what"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedFaceID()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->mSelectedFaceID:I

    return v0
.end method

.method protected invisibleView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 340
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 341
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 342
    return-void
.end method

.method public isFromGoldbox()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->isFromGoldbox:Z

    return v0
.end method

.method public isHaveGenderLib()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->mFaceBitmapUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->mFaceBitmapUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->isHaveGenderLib()Z

    move-result v0

    goto :goto_0
.end method

.method public judgeGenderInBitmap(Landroid/graphics/Bitmap;[Landroid/graphics/Rect;)Ljava/util/List;
    .locals 1
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "faceRectsInBaseBmp"    # [Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "[",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->mFaceBitmapUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->judgeGenderFromeBmp(Landroid/graphics/Bitmap;[Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->requestWindowFeature(I)Z

    .line 54
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 55
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->facePrettyPref:Landroid/content/SharedPreferences;

    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->mFaceBitmapUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->mFaceBitmapUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->mFaceBitmapUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->initFaceDetecter()V

    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->mFaceBitmapUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->initFaceDetectrtAndGenderJudger()V

    .line 64
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 85
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->releaseFaceDetecterGenderJudger()V

    .line 86
    return-void
.end method

.method protected putIntToPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .locals 1
    .param p1, "mPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "KEY"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 458
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 459
    return-void
.end method

.method public releaseFaceDetecterGenderJudger()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->mFaceBitmapUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->relaseFaceDetecter()V

    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->mFaceBitmapUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->relaseGenderJudger()V

    .line 91
    return-void
.end method

.method protected rotationToSeekbarValue(F)I
    .locals 3
    .param p1, "rotation"    # F

    .prologue
    .line 367
    const/high16 v1, 0x41f00000    # 30.0f

    sub-float v1, p1, v1

    const/high16 v2, -0x3fc00000    # -3.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 368
    .local v0, "outnum":I
    return v0
.end method

.method protected seekbarValueTorotation(I)I
    .locals 1
    .param p1, "paramValue"    # I

    .prologue
    .line 381
    div-int/lit8 v0, p1, -0x3

    add-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method protected varargs setButtonClickable(Z[Landroid/widget/ImageButton;)V
    .locals 3
    .param p1, "isCanClick"    # Z
    .param p2, "imgButtons"    # [Landroid/widget/ImageButton;

    .prologue
    .line 324
    array-length v1, p2

    .line 325
    .local v1, "imgBtnNumber":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 326
    aget-object v2, p2, v0

    invoke-virtual {v2, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 327
    aget-object v2, p2, v0

    invoke-virtual {v2, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_0
    return-void
.end method

.method protected varargs setButtonDisable([Landroid/widget/Button;)V
    .locals 4
    .param p1, "buttons"    # [Landroid/widget/Button;

    .prologue
    const/4 v3, 0x0

    .line 248
    array-length v0, p1

    .line 249
    .local v0, "buttonNumber":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 250
    aget-object v2, p1, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 251
    aget-object v2, p1, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_0
    return-void
.end method

.method protected varargs setCircleProgressViewVisibility(Z[Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;)V
    .locals 4
    .param p1, "isVisible"    # Z
    .param p2, "views"    # [Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    .prologue
    .line 288
    array-length v1, p2

    .line 289
    .local v1, "viewNumber":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 290
    if-eqz p1, :cond_0

    .line 291
    aget-object v2, p2, v0

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->clearAnimation()V

    .line 292
    aget-object v2, p2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setVisibility(I)V

    .line 289
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    aget-object v2, p2, v0

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->clearAnimation()V

    .line 295
    aget-object v2, p2, v0

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setVisibility(I)V

    goto :goto_1

    .line 299
    :cond_1
    return-void
.end method

.method protected varargs setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V
    .locals 4
    .param p1, "isVisible"    # Z
    .param p2, "buttons"    # [Landroid/widget/ImageButton;

    .prologue
    .line 265
    array-length v0, p2

    .line 266
    .local v0, "btnNumber":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 267
    aget-object v2, p2, v1

    invoke-virtual {v2}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 268
    if-eqz p1, :cond_0

    .line 269
    aget-object v2, p2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 266
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    :cond_0
    aget-object v2, p2, v1

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 276
    :cond_1
    return-void
.end method

.method public setIs_from_goldbox(Z)V
    .locals 0
    .param p1, "is_from_goldbox"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->isFromGoldbox:Z

    .line 136
    return-void
.end method

.method public setSelectedFaceID(I)V
    .locals 0
    .param p1, "mSelectedFaceID"    # I

    .prologue
    .line 478
    iput p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->mSelectedFaceID:I

    .line 479
    return-void
.end method

.method protected setTextViewTypeface(I)V
    .locals 5
    .param p1, "mLinearLayoutID"    # I

    .prologue
    .line 425
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 426
    .local v3, "nameLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 427
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 428
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 429
    .local v1, "childLinearLayout":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v4}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 427
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 431
    .end local v1    # "childLinearLayout":Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method

.method protected setViewAlphaValue(Landroid/view/View;F)V
    .locals 0
    .param p1, "mView"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    .line 470
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 471
    return-void
.end method

.method public varargs setViewColor(I[Landroid/widget/TextView;)V
    .locals 2
    .param p1, "mColor"    # I
    .param p2, "view"    # [Landroid/widget/TextView;

    .prologue
    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 308
    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    .line 309
    aget-object v1, p2, v0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 307
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_1
    return-void
.end method

.method protected visiableView(Landroid/view/View;)V
    .locals 1
    .param p1, "iView"    # Landroid/view/View;

    .prologue
    .line 353
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 354
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 355
    return-void
.end method
