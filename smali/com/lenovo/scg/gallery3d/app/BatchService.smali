.class public Lcom/lenovo/scg/gallery3d/app/BatchService;
.super Landroid/app/Service;
.source "BatchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/BatchService$LocalBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/BatchService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/BatchService$LocalBinder;-><init>(Lcom/lenovo/scg/gallery3d/app/BatchService;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/BatchService;->mBinder:Landroid/os/IBinder;

    .line 37
    new-instance v0, Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    invoke-direct {v0, v1, v1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;-><init>(II)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/BatchService;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    return-void
.end method


# virtual methods
.method public getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/BatchService;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/BatchService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method
