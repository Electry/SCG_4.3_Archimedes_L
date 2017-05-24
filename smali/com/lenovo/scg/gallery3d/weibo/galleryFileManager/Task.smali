.class public abstract Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mCanceled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;->mCanceled:Z

    .line 15
    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;->mCanceled:Z

    .line 19
    return-void
.end method

.method public getDebugString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract run()V
.end method
