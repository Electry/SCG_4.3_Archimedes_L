.class public Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;
.super Landroid/view/View;
.source "WeiboGifView.java"


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

    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mGifw:I

    .line 32
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mGifh:I

    .line 33
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mVieww:I

    .line 34
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mViewh:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovie:Landroid/graphics/Movie;

    .line 36
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovieStart:J

    .line 37
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovieDuration:J

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mGifw:I

    .line 32
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mGifh:I

    .line 33
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mVieww:I

    .line 34
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mViewh:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovie:Landroid/graphics/Movie;

    .line 36
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovieStart:J

    .line 37
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovieDuration:J

    .line 45
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

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mGifw:I

    .line 32
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mGifh:I

    .line 33
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mVieww:I

    .line 34
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mViewh:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovie:Landroid/graphics/Movie;

    .line 36
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovieStart:J

    .line 37
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovieDuration:J

    .line 49
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
    .line 52
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 53
    .local v1, "bytestream":Ljava/io/ByteArrayOutputStream;
    const/high16 v4, 0x200000

    new-array v0, v4, [B

    .line 55
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 56
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 59
    .local v2, "imgdata":[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 60
    return-object v2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 174
    const-string v10, "GifView"

    const-string v11, "-onDraw ----"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovie:Landroid/graphics/Movie;

    if-nez v10, :cond_0

    .line 229
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 181
    .local v0, "curTime":J
    iget-wide v10, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovieStart:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 182
    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovieStart:J

    .line 185
    :cond_1
    iget-wide v10, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovieStart:J

    sub-long v10, v0, v10

    iget-wide v12, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovieDuration:J

    rem-long/2addr v10, v12

    long-to-int v4, v10

    .line 186
    .local v4, "relTime":I
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v10, v4}, Landroid/graphics/Movie;->setTime(I)Z

    .line 188
    const/high16 v5, 0x3f800000    # 1.0f

    .line 189
    .local v5, "scaleRate":F
    const/4 v9, 0x0

    .line 190
    .local v9, "wRate":F
    const/4 v2, 0x0

    .line 192
    .local v2, "hRate":F
    const-string v10, "GifView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mGifw = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mGifw:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v10, "GifView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mGifh = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mGifh:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget v10, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mGifw:I

    const/16 v11, 0xbe

    if-le v10, v11, :cond_2

    .line 196
    const/high16 v5, 0x3f800000    # 1.0f

    .line 197
    iget v10, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mVieww:I

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mGifw:I

    int-to-float v11, v11

    div-float v9, v10, v11

    .line 198
    iget v10, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mViewh:I

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mGifh:I

    int-to-float v11, v11

    div-float v2, v10, v11

    .line 205
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

    .line 206
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

    .line 208
    cmpl-float v10, v9, v2

    if-ltz v10, :cond_3

    .line 209
    move v5, v2

    .line 210
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

    .line 216
    :goto_2
    iget v10, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mGifw:I

    int-to-float v10, v10

    mul-float v7, v5, v10

    .line 217
    .local v7, "scalew":F
    iget v10, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mGifh:I

    int-to-float v10, v10

    mul-float v6, v5, v10

    .line 219
    .local v6, "scaleh":F
    iget v10, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mVieww:I

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    sub-float/2addr v10, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float v3, v10, v11

    .line 220
    .local v3, "leftPt":F
    iget v10, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mViewh:I

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    sub-float/2addr v10, v6

    const/high16 v11, 0x40000000    # 2.0f

    div-float v8, v10, v11

    .line 222
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

    .line 223
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

    .line 225
    invoke-virtual {p1, v3, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 226
    invoke-virtual {p1, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 227
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovie:Landroid/graphics/Movie;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, p1, v11, v12}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 228
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->invalidate()V

    goto/16 :goto_0

    .line 200
    .end local v3    # "leftPt":F
    .end local v6    # "scaleh":F
    .end local v7    # "scalew":F
    .end local v8    # "topPt":F
    :cond_2
    const v5, 0x3f4ccccd    # 0.8f

    .line 201
    iget v10, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mVieww:I

    int-to-float v10, v10

    mul-float/2addr v10, v5

    iget v11, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mGifw:I

    int-to-float v11, v11

    div-float v9, v10, v11

    .line 202
    iget v10, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mViewh:I

    int-to-float v10, v10

    mul-float/2addr v10, v5

    iget v11, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mGifh:I

    int-to-float v11, v11

    div-float v2, v10, v11

    goto/16 :goto_1

    .line 212
    :cond_3
    move v5, v9

    .line 213
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
    .line 165
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mVieww:I

    .line 166
    iput p2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mViewh:I

    .line 167
    const-string v0, "GifView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVieww = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mVieww:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v0, "GifView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mViewh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mViewh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 170
    return-void
.end method

.method public setGifPath(Ljava/lang/String;)Z
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 64
    if-nez p1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v3, "gifFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 73
    const/4 v4, 0x0

    .line 74
    .local v4, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 78
    .local v1, "bRet":Z
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 84
    .local v0, "array":[B
    :try_start_1
    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->streamToBytes(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 89
    :goto_1
    const/4 v6, 0x0

    :try_start_2
    array-length v7, v0

    invoke-static {v0, v6, v7}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovie:Landroid/graphics/Movie;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    const/4 v1, 0x1

    .line 95
    if-eqz v5, :cond_5

    .line 97
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v4, v5

    .line 104
    .end local v0    # "array":[B
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovie:Landroid/graphics/Movie;

    if-eqz v6, :cond_0

    .line 105
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v6}, Landroid/graphics/Movie;->duration()I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovieDuration:J

    .line 107
    const-wide/16 v6, 0x0

    iget-wide v8, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovieDuration:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 108
    const-wide/16 v6, 0x3e8

    iput-wide v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovieDuration:J

    .line 110
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v6}, Landroid/graphics/Movie;->width()I

    move-result v6

    iput v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mGifw:I

    .line 111
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v6}, Landroid/graphics/Movie;->height()I

    move-result v6

    iput v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mGifh:I

    goto :goto_0

    .line 85
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v0    # "array":[B
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 91
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    move-object v4, v5

    .line 92
    .end local v0    # "array":[B
    .end local v5    # "is":Ljava/io/InputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "is":Ljava/io/InputStream;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 95
    if-eqz v4, :cond_2

    .line 97
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 98
    :catch_2
    move-exception v2

    .line 99
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 98
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v0    # "array":[B
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v2

    .line 99
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 100
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 95
    .end local v0    # "array":[B
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v4, :cond_4

    .line 97
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 100
    :cond_4
    :goto_5
    throw v6

    .line 98
    :catch_4
    move-exception v2

    .line 99
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 95
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v0    # "array":[B
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 91
    .end local v0    # "array":[B
    :catch_5
    move-exception v2

    goto :goto_3

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v0    # "array":[B
    .restart local v5    # "is":Ljava/io/InputStream;
    :cond_5
    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public setUri(Landroid/net/Uri;)Z
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 118
    if-nez p1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v1

    .line 122
    :cond_1
    const/4 v3, 0x0

    .line 123
    .local v3, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 125
    .local v1, "bRet":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "array":[B
    :try_start_1
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->streamToBytes(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 135
    :goto_1
    const/4 v4, 0x0

    :try_start_2
    array-length v5, v0

    invoke-static {v0, v4, v5}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovie:Landroid/graphics/Movie;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    const/4 v1, 0x1

    .line 141
    if-eqz v3, :cond_2

    .line 143
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 150
    .end local v0    # "array":[B
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovie:Landroid/graphics/Movie;

    if-eqz v4, :cond_0

    .line 151
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v4}, Landroid/graphics/Movie;->duration()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovieDuration:J

    .line 153
    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovieDuration:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 154
    const-wide/16 v4, 0x3e8

    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovieDuration:J

    .line 156
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v4}, Landroid/graphics/Movie;->width()I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mGifw:I

    .line 157
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v4}, Landroid/graphics/Movie;->height()I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->mGifh:I

    goto :goto_0

    .line 131
    .restart local v0    # "array":[B
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 137
    .end local v0    # "array":[B
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 138
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 141
    if-eqz v3, :cond_2

    .line 143
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 144
    :catch_2
    move-exception v2

    .line 145
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 144
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "array":[B
    :catch_3
    move-exception v2

    .line 145
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 141
    .end local v0    # "array":[B
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_4

    .line 143
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 146
    :cond_4
    :goto_3
    throw v4

    .line 144
    :catch_4
    move-exception v2

    .line 145
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
