.class public Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;
.super Ljava/lang/Object;
.source "BufferHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/livefilter/BufferHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameBufferInfo"
.end annotation


# instance fields
.field public frameBufferHandle:I

.field public textureHandle:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "frameBuffer"    # I
    .param p2, "texture"    # I

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p1, p0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->frameBufferHandle:I

    .line 148
    iput p2, p0, Lcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;->textureHandle:I

    .line 150
    return-void
.end method
