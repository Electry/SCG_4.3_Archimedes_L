.class final Lcom/lenovo/scg/photos/data/MediaCacheUtils$1;
.super Ljava/lang/Object;
.source "MediaCacheUtils.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/photos/data/MediaCacheUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public setCancelListener(Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;

    .prologue
    .line 61
    return-void
.end method

.method public setMode(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method
