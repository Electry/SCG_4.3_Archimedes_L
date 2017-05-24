.class public abstract Lcom/lenovo/scg/gallery3d/app/AppBridge;
.super Ljava/lang/Object;
.source "AppBridge.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method


# virtual methods
.method public abstract attachScreenNail()Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public abstract detachScreenNail()V
.end method

.method public abstract isPanorama()Z
.end method

.method public abstract isStaticCamera()Z
.end method

.method public abstract onFullScreenChanged(Z)V
.end method

.method public abstract onSingleTapUp(II)Z
.end method

.method public abstract onTouch(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setCameraSourcePath(Ljava/lang/String;)V
.end method

.method public abstract setServer(Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;)V
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 37
    return-void
.end method
