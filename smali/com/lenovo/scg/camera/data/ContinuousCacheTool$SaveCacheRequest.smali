.class Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;
.super Ljava/lang/Object;
.source "ContinuousCacheTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/data/ContinuousCacheTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveCacheRequest"
.end annotation


# instance fields
.field public data:[B

.field public id:I

.field public sPath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;->data:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/data/ContinuousCacheTool$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/data/ContinuousCacheTool$1;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/lenovo/scg/camera/data/ContinuousCacheTool$SaveCacheRequest;-><init>()V

    return-void
.end method
