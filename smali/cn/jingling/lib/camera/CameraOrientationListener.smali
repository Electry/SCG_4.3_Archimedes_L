.class public Lcn/jingling/lib/camera/CameraOrientationListener;
.super Landroid/view/OrientationEventListener;
.source "CameraOrientationListener.java"


# instance fields
.field private mScreenDirection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getOrientation()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcn/jingling/lib/camera/CameraOrientationListener;->mScreenDirection:I

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 32
    add-int/lit8 v0, p1, 0x2d

    rem-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x5a

    iput v0, p0, Lcn/jingling/lib/camera/CameraOrientationListener;->mScreenDirection:I

    .line 33
    return-void
.end method
