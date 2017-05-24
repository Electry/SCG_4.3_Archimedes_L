.class public Lcom/lenovo/scg/gallery3d/ui/GifView;
.super Landroid/view/View;
.source "GifView.java"


# static fields
.field private static final FILE_MAX_SIZE:I = 0x200000

.field private static final M_GIF_WIDTH:I = 0xbe

.field private static final M_SCALE_RATIO:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "GifView"


# instance fields
.field private mGifh:I

.field private mGifw:I

.field private mMovie:Landroid/graphics/Movie;

.field private mMovieDuration:J

.field private mMovieStart:J

.field private mViewh:I

.field private mVieww:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mGifw:I

    .line 32
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mGifh:I

    .line 33
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mVieww:I

    .line 34
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mViewh:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovie:Landroid/graphics/Movie;

    .line 36
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovieStart:J

    .line 37
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovieDuration:J

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mGifw:I

    .line 32
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mGifh:I

    .line 33
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mVieww:I

    .line 34
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mViewh:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovie:Landroid/graphics/Movie;

    .line 36
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovieStart:J

    .line 37
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovieDuration:J

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mGifw:I

    .line 32
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mGifh:I

    .line 33
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mVieww:I

    .line 34
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mViewh:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovie:Landroid/graphics/Movie;

    .line 36
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovieStart:J

    .line 37
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovieDuration:J

    .line 51
    return-void
.end method

.method private streamToBytes(Ljava/io/InputStream;)[B
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    .local v1, "bytestream":Ljava/io/ByteArrayOutputStream;
    const/high16 v4, 0x200000

    new-array v0, v4, [B

    .line 58
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 60
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 63
    .local v2, "imgdata":[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 64
    return-object v2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 139
    const-string v10, "GifView"

    const-string v11, "-onDraw ----"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovie:Landroid/graphics/Movie;

    if-nez v10, :cond_0

    .line 202
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 147
    .local v0, "curTime":J
    iget-wide v10, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovieStart:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 149
    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovieStart:J

    .line 152
    :cond_1
    iget-wide v10, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovieStart:J

    sub-long v10, v0, v10

    iget-wide v12, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovieDuration:J

    rem-long/2addr v10, v12

    long-to-int v4, v10

    .line 153
    .local v4, "relTime":I
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v10, v4}, Landroid/graphics/Movie;->setTime(I)Z

    .line 155
    const/high16 v5, 0x3f800000    # 1.0f

    .line 156
    .local v5, "scaleRate":F
    const/4 v9, 0x0

    .line 157
    .local v9, "wRate":F
    const/4 v2, 0x0

    .line 159
    .local v2, "hRate":F
    const-string v10, "GifView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mGifw = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mGifw:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v10, "GifView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mGifh = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mGifh:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mGifw:I

    const/16 v11, 0xbe

    if-le v10, v11, :cond_2

    .line 164
    const/high16 v5, 0x3f800000    # 1.0f

    .line 165
    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mVieww:I

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mGifw:I

    int-to-float v11, v11

    div-float v9, v10, v11

    .line 166
    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mViewh:I

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mGifh:I

    int-to-float v11, v11

    div-float v2, v10, v11

    .line 175
    :goto_1
    const-string v10, "GifView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "wRate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v10, "GifView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hRate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    cmpl-float v10, v9, v2

    if-ltz v10, :cond_3

    .line 180
    move v5, v2

    .line 181
    const-string v10, "GifView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " W >= H scaleRate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_2
    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mGifw:I

    int-to-float v10, v10

    mul-float v7, v5, v10

    .line 190
    .local v7, "scalew":F
    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mGifh:I

    int-to-float v10, v10

    mul-float v6, v5, v10

    .line 192
    .local v6, "scaleh":F
    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mVieww:I

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    sub-float/2addr v10, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float v3, v10, v11

    .line 193
    .local v3, "leftPt":F
    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mViewh:I

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    sub-float/2addr v10, v6

    const/high16 v11, 0x40000000    # 2.0f

    div-float v8, v10, v11

    .line 195
    .local v8, "topPt":F
    const-string v10, "GifView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " leftPt = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v10, "GifView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " topPt = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p1, v3, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 199
    invoke-virtual {p1, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 200
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovie:Landroid/graphics/Movie;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, p1, v11, v12}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 201
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/GifView;->invalidate()V

    goto/16 :goto_0

    .line 170
    .end local v3    # "leftPt":F
    .end local v6    # "scaleh":F
    .end local v7    # "scalew":F
    .end local v8    # "topPt":F
    :cond_2
    const v5, 0x3f4ccccd    # 0.8f

    .line 171
    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mVieww:I

    int-to-float v10, v10

    mul-float/2addr v10, v5

    iget v11, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mGifw:I

    int-to-float v11, v11

    div-float v9, v10, v11

    .line 172
    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mViewh:I

    int-to-float v10, v10

    mul-float/2addr v10, v5

    iget v11, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mGifh:I

    int-to-float v11, v11

    div-float v2, v10, v11

    goto/16 :goto_1

    .line 185
    :cond_3
    move v5, v9

    .line 186
    const-string v10, "GifView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "W < H scaleRate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mVieww:I

    .line 130
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mViewh:I

    .line 131
    const-string v0, "GifView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVieww = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mVieww:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v0, "GifView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mViewh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mViewh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 134
    return-void
.end method

.method public setUri(Landroid/net/Uri;)Z
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 69
    if-nez p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 74
    :cond_1
    const/4 v3, 0x0

    .line 75
    .local v3, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 77
    .local v1, "bRet":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/GifView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, "array":[B
    :try_start_1
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/ui/GifView;->streamToBytes(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 86
    :goto_1
    const/4 v4, 0x0

    :try_start_2
    array-length v5, v0

    invoke-static {v0, v4, v5}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovie:Landroid/graphics/Movie;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    const/4 v1, 0x1

    .line 94
    if-eqz v3, :cond_2

    .line 98
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 106
    .end local v0    # "array":[B
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovie:Landroid/graphics/Movie;

    if-eqz v4, :cond_0

    .line 108
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v4}, Landroid/graphics/Movie;->duration()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovieDuration:J

    .line 109
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v4}, Landroid/graphics/Movie;->width()I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mGifw:I

    .line 110
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v4}, Landroid/graphics/Movie;->height()I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mGifh:I

    .line 112
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mGifw:I

    if-nez v4, :cond_3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mGifh:I

    if-nez v4, :cond_3

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovieDuration:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 114
    const/4 v1, 0x0

    .line 117
    :cond_3
    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovieDuration:J

    cmp-long v4, v6, v4

    if-nez v4, :cond_0

    .line 119
    const-wide/16 v4, 0x3e8

    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/ui/GifView;->mMovieDuration:J

    goto :goto_0

    .line 83
    .restart local v0    # "array":[B
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 88
    .end local v0    # "array":[B
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 90
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 94
    if-eqz v3, :cond_2

    .line 98
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 99
    :catch_2
    move-exception v2

    .line 101
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 99
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "array":[B
    :catch_3
    move-exception v2

    .line 101
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 94
    .end local v0    # "array":[B
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_4

    .line 98
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 102
    :cond_4
    :goto_3
    throw v4

    .line 99
    :catch_4
    move-exception v2

    .line 101
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
