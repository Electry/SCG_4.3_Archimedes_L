.class public abstract Lcn/jingling/lib/livefilter/LiveOp;
.super Ljava/lang/Object;
.source "LiveOp.java"


# instance fields
.field protected mImageSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract glDraw([FILcn/jingling/lib/livefilter/BufferHelper$FrameBufferInfo;II)V
.end method

.method public abstract glRelease()V
.end method

.method public abstract glSetup(Landroid/content/Context;)V
.end method

.method public glUpdate(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "fboImageSize"    # Landroid/graphics/Point;

    .prologue
    .line 27
    iput-object p2, p0, Lcn/jingling/lib/livefilter/LiveOp;->mImageSize:Landroid/graphics/Point;

    .line 28
    return-void
.end method

.method public prepareBmForTexture(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "fboImageSize"    # Landroid/graphics/Point;

    .prologue
    .line 55
    return-void
.end method
