.class public Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
.super Ljava/lang/Object;
.source "PreviewTexDataBuffer.java"


# instance fields
.field private mBufferHandle:J

.field private mBufferHeight:I

.field private mBufferSize:I

.field private mBufferWidth:I


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "nSize"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->mBufferSize:I

    .line 23
    iput p2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->mBufferWidth:I

    .line 24
    iput p3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->mBufferHeight:I

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->mBufferHandle:J

    .line 26
    return-void
.end method

.method private native CreateBufferC(I)J
.end method

.method private native DestroyBufferC(J)V
.end method


# virtual methods
.method public ConvertToBitmapScaled(Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "convertor"    # Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;
    .param p2, "bmpDst"    # Landroid/graphics/Bitmap;

    .prologue
    .line 59
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->mBufferHandle:J

    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->mBufferSize:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->mBufferWidth:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->mBufferHeight:I

    sget-object v7, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YVU420sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    move-object v1, p1

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->CharBufToScaledBitmapC(JIIILcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;Landroid/graphics/Bitmap;)V

    .line 60
    return-void
.end method

.method public allocBuffer()Z
    .locals 4

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->mBufferSize:I

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->CreateBufferC(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->mBufferHandle:J

    .line 37
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->mBufferHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public freeBuffer()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 42
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->mBufferHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 43
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->mBufferHandle:J

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->DestroyBufferC(J)V

    .line 44
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->mBufferHandle:J

    .line 46
    :cond_0
    return-void
.end method

.method public getBufferHandle()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->mBufferHandle:J

    return-wide v0
.end method

.method public resizeBuffer(III)Z
    .locals 1
    .param p1, "nSize"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->freeBuffer()V

    .line 51
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->mBufferSize:I

    .line 52
    iput p2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->mBufferWidth:I

    .line 53
    iput p3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->mBufferHeight:I

    .line 54
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->allocBuffer()Z

    move-result v0

    return v0
.end method
