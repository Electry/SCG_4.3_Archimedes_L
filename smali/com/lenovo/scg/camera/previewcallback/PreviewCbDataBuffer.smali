.class public Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;
.super Ljava/lang/Object;
.source "PreviewCbDataBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;
    }
.end annotation


# instance fields
.field private mBufferHandle:J

.field private mBufferState:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

.field private mPreviewBufferSize:I

.field private mPreviewData:[B

.field private mPreviewFormat:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "fmt"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mBufferHandle:J

    .line 39
    iput p1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mPreviewWidth:I

    .line 40
    iput p2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mPreviewHeight:I

    .line 41
    iput p3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mPreviewFormat:I

    .line 43
    invoke-direct {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->AllocBuffer()V

    .line 45
    sget-object v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;->inFill:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->setBufferState(Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;)V

    .line 46
    return-void
.end method

.method private AllocBuffer()V
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mPreviewFormat:I

    sparse-switch v0, :sswitch_data_0

    .line 64
    :goto_0
    iget v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mPreviewBufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mPreviewData:[B

    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mPreviewData:[B

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->getHandle([B)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mBufferHandle:J

    .line 66
    return-void

    .line 52
    :sswitch_0
    iget v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mPreviewWidth:I

    iget v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mPreviewHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mPreviewBufferSize:I

    goto :goto_0

    .line 56
    :sswitch_1
    iget v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mPreviewWidth:I

    iget v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mPreviewHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mPreviewBufferSize:I

    goto :goto_0

    .line 60
    :sswitch_2
    iget v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mPreviewWidth:I

    iget v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mPreviewHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mPreviewBufferSize:I

    goto :goto_0

    .line 50
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method private native getHandle([B)J
.end method


# virtual methods
.method GetBuffer()[B
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mPreviewData:[B

    return-object v0
.end method

.method public ResizeBuffer(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mPreviewWidth:I

    .line 76
    iput p2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mPreviewHeight:I

    .line 78
    invoke-direct {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->AllocBuffer()V

    .line 79
    return-void
.end method

.method public getBufferHandle()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mBufferHandle:J

    return-wide v0
.end method

.method public getBufferState()Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mBufferState:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    return-object v0
.end method

.method public setBufferState(Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;)V
    .locals 0
    .param p1, "st"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->mBufferState:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer$eBufState;

    .line 30
    return-void
.end method
