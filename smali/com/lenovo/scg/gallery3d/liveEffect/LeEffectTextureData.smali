.class public Lcom/lenovo/scg/gallery3d/liveEffect/LeEffectTextureData;
.super Ljava/lang/Object;
.source "LeEffectTextureData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LeEffectTextureData"


# instance fields
.field private effectHandler:J

.field private mEffectNative:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LeEffectTextureData;->mEffectNative:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    .line 13
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LeEffectTextureData;->mEffectNative:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;->InitTextureStruct()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LeEffectTextureData;->effectHandler:J

    .line 14
    return-void
.end method


# virtual methods
.method public getBuffer()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LeEffectTextureData;->effectHandler:J

    return-wide v0
.end method

.method public releaseAllBuffers()V
    .locals 4

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LeEffectTextureData;->mEffectNative:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LeEffectTextureData;->effectHandler:J

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;->ReleaseTextureBuffer(J)V

    .line 18
    return-void
.end method

.method public setTextureData([BII)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 27
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LeEffectTextureData;->mEffectNative:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LeEffectTextureData;->effectHandler:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;->SetTextureStruct(J[BII)V

    .line 28
    return-void
.end method
