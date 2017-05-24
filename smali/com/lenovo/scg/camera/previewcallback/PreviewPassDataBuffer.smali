.class public Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
.super Ljava/lang/Object;
.source "PreviewPassDataBuffer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewPassDataBuffer"


# instance fields
.field private mBufferHandle:J


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;)V
    .locals 2
    .param p1, "dataBuffer"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;->mBufferHandle:J

    .line 14
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->getBufferHandle()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;->mBufferHandle:J

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;)V
    .locals 2
    .param p1, "textureBuffer"    # Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;->mBufferHandle:J

    .line 18
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;->getBufferHandle()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;->mBufferHandle:J

    .line 19
    return-void
.end method


# virtual methods
.method public getHandler()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;->mBufferHandle:J

    return-wide v0
.end method
