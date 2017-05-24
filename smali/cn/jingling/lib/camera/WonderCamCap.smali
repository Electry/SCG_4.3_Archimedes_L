.class public abstract Lcn/jingling/lib/camera/WonderCamCap;
.super Ljava/lang/Object;
.source "WonderCamCap.java"


# instance fields
.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcn/jingling/lib/camera/WonderCamCap;->mHandler:Landroid/os/Handler;

    .line 19
    return-void
.end method
