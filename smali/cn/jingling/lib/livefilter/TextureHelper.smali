.class public Lcn/jingling/lib/livefilter/TextureHelper;
.super Ljava/lang/Object;
.source "TextureHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadCurveTexture(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "assetName"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x100

    .line 140
    new-instance v1, Lcn/jingling/lib/filters/Curve;

    invoke-direct {v1, p0, p1}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    .local v1, "curve":Lcn/jingling/lib/filters/Curve;
    const/4 v3, 0x1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v8, :cond_0

    .line 149
    invoke-static {v0}, Lcn/jingling/lib/livefilter/TextureHelper;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v3

    return v3

    .line 145
    :cond_0
    const/4 v3, 0x0

    .line 146
    const/16 v4, 0xff

    invoke-virtual {v1}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v5

    aget v5, v5, v2

    .line 147
    invoke-virtual {v1}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v6

    aget v6, v6, v2

    invoke-virtual {v1}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v7

    aget v7, v7, v2

    .line 146
    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    .line 143
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static loadSubTexture(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    .line 60
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 61
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 64
    invoke-static {v2, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/jingling/lib/livefilter/TextureHelper;->loadSubTexture(Landroid/graphics/Bitmap;)I

    move-result v2

    return v2
.end method

.method public static loadSubTexture(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetName"    # Ljava/lang/String;

    .prologue
    .line 72
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 73
    .local v2, "is":Ljava/io/InputStream;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 74
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 76
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 78
    new-instance v4, Ljava/lang/OutOfMemoryError;

    invoke-direct {v4}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    const/4 v4, -0x1

    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return v4

    .line 81
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcn/jingling/lib/livefilter/TextureHelper;->loadSubTexture(Landroid/graphics/Bitmap;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_0
.end method

.method public static loadSubTexture(Landroid/graphics/Bitmap;)I
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const v6, 0x812f

    const/16 v5, 0x2601

    const/4 v4, 0x1

    const/16 v8, 0xde1

    const/4 v7, 0x0

    .line 90
    new-array v2, v4, [I

    .line 92
    .local v2, "textureHandle":[I
    invoke-static {v4, v2, v7}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 94
    aget v4, v2, v7

    if-eqz v4, :cond_2

    .line 97
    aget v4, v2, v7

    invoke-static {v8, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 101
    const/16 v4, 0x2801

    .line 100
    invoke-static {v8, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 103
    const/16 v4, 0x2800

    .line 102
    invoke-static {v8, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 105
    const/16 v4, 0x2802

    .line 104
    invoke-static {v8, v4, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 107
    const/16 v4, 0x2803

    .line 106
    invoke-static {v8, v4, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 109
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 110
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 111
    .local v1, "h":I
    invoke-static {v3}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v4

    .line 112
    invoke-static {v1}, Lcn/jingling/lib/utils/MathUtils;->nextPowerOfTwo(I)I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 111
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    .local v0, "emptyBm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 115
    new-instance v4, Ljava/lang/OutOfMemoryError;

    invoke-direct {v4}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v4

    .line 118
    :cond_0
    invoke-static {v8, v7, v0, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 122
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 124
    invoke-static {v8, v7, v7, v7, p0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 128
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 129
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 132
    .end local v0    # "emptyBm":Landroid/graphics/Bitmap;
    .end local v1    # "h":I
    .end local v3    # "w":I
    :cond_2
    aget v4, v2, v7

    if-nez v4, :cond_3

    .line 133
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error loading texture."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 136
    :cond_3
    aget v4, v2, v7

    return v4
.end method

.method public static loadTexture(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    .line 18
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 19
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 21
    invoke-static {v2, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 24
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/jingling/lib/livefilter/TextureHelper;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v2

    return v2
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;)I
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const v5, 0x812f

    const/16 v4, 0x2601

    const/4 v1, 0x1

    const/16 v3, 0xde1

    const/4 v2, 0x0

    .line 28
    new-array v0, v1, [I

    .line 30
    .local v0, "textureHandle":[I
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 32
    aget v1, v0, v2

    if-eqz v1, :cond_0

    .line 34
    aget v1, v0, v2

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 38
    const/16 v1, 0x2801

    .line 37
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 40
    const/16 v1, 0x2800

    .line 39
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 42
    const/16 v1, 0x2802

    .line 41
    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 44
    const/16 v1, 0x2803

    .line 43
    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 46
    invoke-static {v3, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 49
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 52
    :cond_0
    aget v1, v0, v2

    if-nez v1, :cond_1

    .line 53
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error loading texture."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_1
    aget v1, v0, v2

    return v1
.end method
