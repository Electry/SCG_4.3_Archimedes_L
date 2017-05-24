.class public Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;
.super Ljava/lang/Object;
.source "TiltShiftParams.java"


# instance fields
.field private mIsCircle:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;->mIsCircle:Z

    .line 18
    return-void
.end method


# virtual methods
.method public clearParams()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public ismIsCircle()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;->mIsCircle:Z

    return v0
.end method

.method public setmIsCircle(Z)V
    .locals 0
    .param p1, "mIsCircle"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftParams;->mIsCircle:Z

    .line 26
    return-void
.end method
