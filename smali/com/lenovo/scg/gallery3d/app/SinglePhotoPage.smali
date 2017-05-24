.class public Lcom/lenovo/scg/gallery3d/app/SinglePhotoPage;
.super Lcom/lenovo/scg/gallery3d/app/PhotoPage;
.source "SinglePhotoPage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;-><init>()V

    return-void
.end method


# virtual methods
.method public forceUnlockOrientation()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->forceUnlockOrientation()V

    .line 39
    return-void
.end method

.method public getOrientationCompensation()I
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getOrientationCompensation()I

    move-result v0

    return v0
.end method

.method public isCanScroller()Z
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isCanScroller()Z

    move-result v0

    return v0
.end method

.method public onDeleteBrush(Lcom/lenovo/scg/gallery3d/data/Path;ILcom/lenovo/scg/gallery3d/data/Path;)V
    .locals 0
    .param p1, "imagePath"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "offset"    # I
    .param p3, "brushPath"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->onDeleteBrush(Lcom/lenovo/scg/gallery3d/data/Path;ILcom/lenovo/scg/gallery3d/data/Path;)V

    .line 55
    return-void
.end method

.method public restoreOrientationState()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->restoreOrientationState()V

    .line 33
    return-void
.end method

.method public saveOrientationState()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->saveOrientationState()V

    .line 27
    return-void
.end method

.method public unlockOrientation()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method
