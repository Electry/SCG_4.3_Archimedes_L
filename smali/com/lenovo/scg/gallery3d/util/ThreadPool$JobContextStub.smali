.class Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContextStub;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/util/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JobContextStub"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/util/ThreadPool$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$1;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContextStub;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public setCancelListener(Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;

    .prologue
    .line 62
    return-void
.end method

.method public setMode(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
