.class public Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;
.super Ljava/lang/Thread;
.source "PanoramaFrameDataCaluateThread.java"


# static fields
.field public static final FRAME_DATA_OK:I = 0x2710


# instance fields
.field private data:[B

.field private height:I

.field private isDoingCaluate:Z

.field private mFormat:I

.field private mHandler:Landroid/os/Handler;

.field private mPanoramaInputRotated:I

.field private size:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->data:[B

    .line 14
    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->size:I

    .line 16
    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->width:I

    .line 18
    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->height:I

    .line 20
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->isDoingCaluate:Z

    .line 22
    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private byteArrayToInt([BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 103
    const/4 v0, 0x0

    .local v0, "fib":I
    const/4 v2, 0x0

    .local v2, "sb":I
    const/4 v3, 0x0

    .local v3, "tb":I
    const/4 v1, 0x0

    .line 104
    .local v1, "fob":I
    aget-byte v4, p1, p2

    and-int/lit16 v0, v4, 0xff

    .line 105
    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v2, v4, 0xff

    .line 106
    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v3, v4, 0xff

    .line 107
    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v1, v4, 0xff

    .line 108
    shl-int/lit8 v4, v1, 0x18

    shl-int/lit8 v5, v3, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v0

    return v4
.end method

.method private byteArrayToInt_YUV422SP([BI)I
    .locals 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 114
    const/4 v0, 0x0

    .local v0, "fib":I
    const/4 v2, 0x0

    .local v2, "sb":I
    const/4 v3, 0x0

    .local v3, "tb":I
    const/4 v1, 0x0

    .line 115
    .local v1, "fob":I
    aget-byte v0, p1, p2

    .line 116
    add-int/lit8 v4, p2, 0x1

    aget-byte v2, p1, v4

    .line 117
    add-int/lit8 v4, p2, 0x2

    aget-byte v3, p1, v4

    .line 118
    add-int/lit8 v4, p2, 0x3

    aget-byte v1, p1, v4

    .line 120
    shl-int/lit8 v4, v1, 0x18

    shl-int/lit8 v5, v0, 0x18

    ushr-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    const v6, 0xff00

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    and-int/lit16 v5, v3, 0xff

    or-int/2addr v4, v5

    return v4
.end method


# virtual methods
.method public isDoingCaluate()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->isDoingCaluate:Z

    return v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 65
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->data:[B

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->size:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->isDoingCaluate:Z

    .line 67
    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->size:I

    new-array v7, v2, [I

    .line 68
    .local v7, "bitmapdata":[I
    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->mFormat:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 69
    const/4 v8, 0x0

    .local v8, "i":I
    const/4 v10, 0x0

    .local v10, "offset":I
    :goto_1
    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->size:I

    if-ge v8, v2, :cond_3

    .line 70
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->data:[B

    invoke-direct {p0, v2, v10}, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->byteArrayToInt([BI)I

    move-result v2

    aput v2, v7, v8

    .line 69
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v10, v10, 0x4

    goto :goto_1

    .line 72
    .end local v8    # "i":I
    .end local v10    # "offset":I
    :cond_2
    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->mFormat:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    .line 73
    const/4 v8, 0x0

    .restart local v8    # "i":I
    const/4 v10, 0x0

    .restart local v10    # "offset":I
    :goto_2
    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->size:I

    if-ge v8, v2, :cond_3

    .line 74
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->data:[B

    invoke-direct {p0, v2, v10}, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->byteArrayToInt_YUV422SP([BI)I

    move-result v2

    aput v2, v7, v8

    .line 73
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v10, v10, 0x4

    goto :goto_2

    .line 77
    .end local v8    # "i":I
    .end local v10    # "offset":I
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 78
    .local v9, "msg":Landroid/os/Message;
    const/16 v2, 0x2710

    iput v2, v9, Landroid/os/Message;->what:I

    .line 80
    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->width:I

    iget v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    .local v0, "bp":Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->mPanoramaInputRotated:I

    if-nez v2, :cond_6

    .line 82
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 83
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 84
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 85
    iget v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->width:I

    iget v4, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->height:I

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->height:I

    iput v2, v9, Landroid/os/Message;->arg1:I

    .line 89
    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->width:I

    iput v2, v9, Landroid/os/Message;->arg2:I

    .line 97
    .end local v5    # "m":Landroid/graphics/Matrix;
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    :cond_5
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->isDoingCaluate:Z

    goto :goto_0

    .line 91
    :cond_6
    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->mPanoramaInputRotated:I

    if-ne v2, v6, :cond_4

    .line 92
    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 93
    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->width:I

    iput v2, v9, Landroid/os/Message;->arg1:I

    .line 94
    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->height:I

    iput v2, v9, Landroid/os/Message;->arg2:I

    goto :goto_3
.end method

.method public setCaptureFormat(I)V
    .locals 0
    .param p1, "format"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->mFormat:I

    .line 56
    return-void
.end method

.method public setData([B)V
    .locals 0
    .param p1, "d"    # [B

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->data:[B

    .line 44
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->height:I

    .line 40
    return-void
.end method

.method public setPanoramaInputRotated(I)V
    .locals 0
    .param p1, "yes"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->mPanoramaInputRotated:I

    .line 60
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "s"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->size:I

    .line 32
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;->width:I

    .line 36
    return-void
.end method
