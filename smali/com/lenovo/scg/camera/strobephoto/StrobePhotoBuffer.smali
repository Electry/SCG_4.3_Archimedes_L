.class public Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;
.super Ljava/lang/Object;
.source "StrobePhotoBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;
    }
.end annotation


# instance fields
.field private buffer:[B

.field private mStatus:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

.field private pictureRealIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;->Invalid:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    iput-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->mStatus:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->buffer:[B

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->pictureRealIndex:I

    return-void
.end method


# virtual methods
.method public freeBuffer()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->buffer:[B

    .line 27
    return-void
.end method

.method public getBuffer()[B
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->buffer:[B

    return-object v0
.end method

.method public getRealIndex()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->pictureRealIndex:I

    return v0
.end method

.method public getStatus()Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->mStatus:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    return-object v0
.end method

.method public setBuffer([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->buffer:[B

    .line 23
    return-void
.end method

.method public setRealIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->pictureRealIndex:I

    .line 42
    return-void
.end method

.method public setStatus(Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer;->mStatus:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBuffer$BufferStatus;

    .line 13
    return-void
.end method
