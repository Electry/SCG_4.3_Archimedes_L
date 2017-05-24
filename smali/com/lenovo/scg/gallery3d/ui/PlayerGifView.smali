.class public Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;
.super Landroid/view/View;
.source "PlayerGifView.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final M_GIF_WIDTH:I = 0xbe


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private delta:I

.field height:I

.field private ifRun:Z

.field private isStop:Z

.field mContext:Landroid/content/Context;

.field private mGifDecoder:Lcom/lenovo/scg/gallery3d/app/GifDecoded;

.field private mScaleRate:F

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->mGifDecoder:Lcom/lenovo/scg/gallery3d/app/GifDecoded;

    .line 21
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->isStop:Z

    .line 22
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->ifRun:Z

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->delta:I

    .line 25
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->width:I

    .line 26
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->height:I

    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->mScaleRate:F

    .line 40
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private getScale()F
    .locals 4

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 159
    .local v1, "widthScale":F
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 160
    .local v0, "heightScale":F
    cmpl-float v2, v1, v0

    if-ltz v2, :cond_0

    .line 163
    .end local v0    # "heightScale":F
    :goto_0
    return v0

    .restart local v0    # "heightScale":F
    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 122
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->getScale()F

    move-result v7

    iput v7, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->mScaleRate:F

    .line 124
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->bmp:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_1

    .line 126
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/16 v8, 0xbe

    if-ge v7, v8, :cond_0

    .line 128
    const/high16 v7, 0x40600000    # 3.5f

    iput v7, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->mScaleRate:F

    .line 131
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 132
    new-instance v5, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v5, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 133
    .local v5, "srcRect":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 135
    .local v0, "dstRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->mScaleRate:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v2, v7

    .line 136
    .local v2, "leftPt":F
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->mScaleRate:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v6, v7

    .line 138
    .local v6, "topPt":F
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->mScaleRate:F

    mul-float/2addr v7, v8

    float-to-int v4, v7

    .line 139
    .local v4, "showViewWidth":I
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->mScaleRate:F

    mul-float/2addr v7, v8

    float-to-int v3, v7

    .line 140
    .local v3, "showViewHeight":I
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "dstRect":Landroid/graphics/Rect;
    invoke-direct {v0, v10, v10, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 142
    .restart local v0    # "dstRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 143
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->bmp:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v5, v0, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 145
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->mGifDecoder:Lcom/lenovo/scg/gallery3d/app/GifDecoded;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->nextBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->bmp:Landroid/graphics/Bitmap;

    .line 148
    :try_start_0
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->mGifDecoder:Lcom/lenovo/scg/gallery3d/app/GifDecoded;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->nextDelay()I

    move-result v7

    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->delta:I

    div-int/2addr v7, v8

    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->invalidate()V

    .line 154
    .end local v0    # "dstRect":Landroid/graphics/Rect;
    .end local v2    # "leftPt":F
    .end local v3    # "showViewHeight":I
    .end local v4    # "showViewWidth":I
    .end local v5    # "srcRect":Landroid/graphics/Rect;
    .end local v6    # "topPt":F
    :cond_1
    return-void

    .line 149
    .restart local v0    # "dstRect":Landroid/graphics/Rect;
    .restart local v2    # "leftPt":F
    .restart local v3    # "showViewHeight":I
    .restart local v4    # "showViewWidth":I
    .restart local v5    # "srcRect":Landroid/graphics/Rect;
    .restart local v6    # "topPt":F
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 169
    monitor-enter p0

    .line 172
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->ifRun:Z

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->postInvalidate()V

    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->mGifDecoder:Lcom/lenovo/scg/gallery3d/app/GifDecoded;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->nextDelay()I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->delta:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 176
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->isStop:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setDelta(I)V
    .locals 0
    .param p1, "is"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->delta:I

    .line 117
    return-void
.end method

.method public setSrcFromFilePath(Ljava/lang/String;)V
    .locals 4
    .param p1, "gifPath"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v3, Lcom/lenovo/scg/gallery3d/app/GifDecoded;

    invoke-direct {v3}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->mGifDecoder:Lcom/lenovo/scg/gallery3d/app/GifDecoded;

    .line 103
    const/4 v1, 0x0

    .line 105
    .local v1, "gifStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "gifStream":Ljava/io/InputStream;
    .local v2, "gifStream":Ljava/io/InputStream;
    move-object v1, v2

    .line 110
    .end local v2    # "gifStream":Ljava/io/InputStream;
    .restart local v1    # "gifStream":Ljava/io/InputStream;
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->mGifDecoder:Lcom/lenovo/scg/gallery3d/app/GifDecoded;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->read(Ljava/io/InputStream;)I

    .line 111
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->mGifDecoder:Lcom/lenovo/scg/gallery3d/app/GifDecoded;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->bmp:Landroid/graphics/Bitmap;

    .line 112
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->postInvalidate()V

    .line 113
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public setStop()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->isStop:Z

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->ifRun:Z

    .line 51
    return-void
.end method

.method public setUri(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 55
    new-instance v3, Lcom/lenovo/scg/gallery3d/app/GifDecoded;

    invoke-direct {v3}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->mGifDecoder:Lcom/lenovo/scg/gallery3d/app/GifDecoded;

    .line 56
    if-nez p1, :cond_1

    .line 58
    const/4 v0, 0x0

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    const/4 v2, 0x0

    .line 62
    .local v2, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 64
    .local v0, "bRet":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->mGifDecoder:Lcom/lenovo/scg/gallery3d/app/GifDecoded;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->read(Ljava/io/InputStream;)I

    .line 68
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->mGifDecoder:Lcom/lenovo/scg/gallery3d/app/GifDecoded;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->bmp:Landroid/graphics/Bitmap;

    .line 69
    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PlayerGifView;->postInvalidate()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    if-eqz v2, :cond_0

    .line 83
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 75
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    if-eqz v2, :cond_0

    .line 83
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 84
    :catch_2
    move-exception v1

    .line 86
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 83
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 87
    :cond_2
    :goto_1
    throw v3

    .line 84
    :catch_3
    move-exception v1

    .line 86
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
