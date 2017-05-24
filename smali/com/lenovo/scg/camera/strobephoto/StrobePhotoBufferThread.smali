.class public Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;
.super Landroid/os/HandlerThread;
.source "StrobePhotoBufferThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final CANCELCACHE:I = 0x2

.field public static final QUESTCACHE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "StrobePhotoBufferThread"

.field private static final THREAD_NAME:Ljava/lang/String; = "StrobePhotoBufferThread"


# instance fields
.field private mBufferList:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

.field private mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

.field private mListLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    .line 39
    const-string v1, "StrobePhotoBufferThread"

    invoke-direct {p0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 28
    new-array v1, v2, [Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    iput-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mBufferList:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    .line 30
    iput v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mListLength:I

    .line 32
    new-instance v1, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-direct {v1}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mListLength:I

    if-ge v0, v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mBufferList:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    new-instance v2, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    invoke-direct {v2}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;-><init>()V

    aput-object v2, v1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method private CacheJpegData([BI)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "real_index"    # I

    .prologue
    .line 83
    const-string v2, "StrobePhotoBufferThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "real_index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mListLength:I

    if-ge v1, v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mBufferList:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->getRealIndex()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 86
    const-string v2, "StrobePhotoBufferThread"

    const-string v3, "already cached"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_1
    return-void

    .line 84
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->getBufferForCache()Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    move-result-object v0

    .line 92
    .local v0, "buffer":Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;
    if-eqz v0, :cond_2

    .line 93
    sget-object v2, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->WaitDecode:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->setStatus(Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->decodeJpegData([B)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->setBuffer([B)V

    .line 95
    invoke-virtual {v0, p2}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->setRealIndex(I)V

    .line 96
    sget-object v2, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->Decoded:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->setStatus(Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;)V

    goto :goto_1

    .line 98
    :cond_2
    const-string v2, "StrobePhotoBufferThread"

    const-string v3, "buffer list is FULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private decodeJpegData([B)[B
    .locals 7
    .param p1, "jpegData"    # [B

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->Init()Z

    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeBufferHead([B)Lcom/lenovo/scg/LeImageJI/CLeImageHead;

    move-result-object v6

    .line 116
    .local v6, "head":Lcom/lenovo/scg/LeImageJI/CLeImageHead;
    if-nez v6, :cond_1

    .line 117
    const-string v0, "StrobePhotoBufferThread"

    const-string/jumbo v1, "setOutput head is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v6    # "head":Lcom/lenovo/scg/LeImageJI/CLeImageHead;
    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    .line 119
    .restart local v6    # "head":Lcom/lenovo/scg/LeImageJI/CLeImageHead;
    :cond_1
    const-string v0, "StrobePhotoBufferThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOutput Head-width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    rem-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    iget v1, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    rem-int/lit8 v1, v1, 0x10

    sub-int/2addr v0, v1

    iput v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    .line 125
    :cond_2
    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    iget v1, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v5, v0, [B

    .line 126
    .local v5, "byte_select_image":[B
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    sget v2, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    iget v3, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    iget v4, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeImage([BIII[B)I

    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->Finish()V

    goto :goto_0
.end method

.method private freeTargetBuffer(I)V
    .locals 4
    .param p1, "real_index"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mListLength:I

    if-ge v0, v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mBufferList:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->getRealIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mBufferList:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->getStatus()Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->Invalid:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    if-eq v1, v2, :cond_0

    .line 75
    const-string v1, "StrobePhotoBufferThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freeTargetBuffer image"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mBufferList:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->freeBuffer()V

    .line 77
    iget-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mBufferList:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    aget-object v1, v1, v0

    sget-object v2, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->Invalid:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->setStatus(Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;)V

    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_1
    return-void
.end method

.method private getBufferForCache()Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mListLength:I

    if-ge v0, v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mBufferList:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->getStatus()Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->Invalid:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mBufferList:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->getStatus()Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->Used:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    if-ne v1, v2, :cond_1

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mBufferList:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    aget-object v1, v1, v0

    .line 109
    :goto_1
    return-object v1

    .line 104
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public freeAllBuffer()V
    .locals 3

    .prologue
    .line 65
    const-string v1, "StrobePhotoBufferThread"

    const-string v2, "freeAllBuffer"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mListLength:I

    if-ge v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mBufferList:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->freeBuffer()V

    .line 68
    iget-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mBufferList:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    aget-object v1, v1, v0

    sget-object v2, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->Invalid:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->setStatus(Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method public getBufferDataByIndex(I)[B
    .locals 4
    .param p1, "real_index"    # I

    .prologue
    const/4 v1, 0x0

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mListLength:I

    if-ge v0, v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mBufferList:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->getRealIndex()I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 49
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mBufferList:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->getStatus()Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->Decoded:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    if-ne v2, v3, :cond_1

    .line 50
    iget-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mBufferList:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    aget-object v1, v1, v0

    sget-object v2, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->Used:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->setStatus(Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;)V

    .line 51
    iget-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mBufferList:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->getBuffer()[B

    move-result-object v1

    .line 61
    :cond_0
    :goto_1
    return-object v1

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mBufferList:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->getStatus()Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->Invalid:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    if-eq v2, v3, :cond_2

    .line 54
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mBufferList:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->freeBuffer()V

    .line 56
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->mBufferList:[Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;

    aget-object v2, v2, v0

    sget-object v3, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->Invalid:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->setStatus(Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;)V

    goto :goto_1

    .line 47
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 139
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->CacheJpegData([BI)V

    goto :goto_0

    .line 142
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->freeTargetBuffer(I)V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
