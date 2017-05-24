.class Lcom/lenovo/scg/camera/data/ContinuousCacheTool$StoreCacheThread;
.super Ljava/lang/Object;
.source "ContinuousCacheTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/data/ContinuousCacheTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreCacheThread"
.end annotation


# instance fields
.field private mIndex:I

.field private mJpegData:[B

.field final synthetic this$0:Lcom/lenovo/scg/camera/data/ContinuousCacheTool;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/data/ContinuousCacheTool;[BI)V
    .locals 0
    .param p2, "jpegData"    # [B
    .param p3, "index"    # I

    .prologue
    .line 152
    iput-object p1, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool$StoreCacheThread;->this$0:Lcom/lenovo/scg/camera/data/ContinuousCacheTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p2, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool$StoreCacheThread;->mJpegData:[B

    .line 154
    iput p3, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool$StoreCacheThread;->mIndex:I

    .line 155
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 161
    new-instance v0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;-><init>(Lcom/lenovo/scg/camera/data/ContinuousCacheTool$1;)V

    .line 162
    .local v0, "r":Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;
    iget v1, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool$StoreCacheThread;->mIndex:I

    iput v1, v0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;->id:I

    .line 166
    iget-object v1, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool$StoreCacheThread;->mJpegData:[B

    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;->data:[B

    .line 167
    iget-object v1, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool$StoreCacheThread;->mJpegData:[B

    iget-object v2, v0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;->data:[B

    iget-object v3, v0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;->data:[B

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iget-object v1, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool$StoreCacheThread;->this$0:Lcom/lenovo/scg/camera/data/ContinuousCacheTool;

    # invokes: Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->addCacheList(Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;)V
    invoke-static {v1, v0}, Lcom/lenovo/scg/camera/data/ContinuousCacheTool;->access$100(Lcom/lenovo/scg/camera/data/ContinuousCacheTool;Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;)V

    .line 205
    return-void
.end method
