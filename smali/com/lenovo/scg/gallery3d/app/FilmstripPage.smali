.class public Lcom/lenovo/scg/gallery3d/app/FilmstripPage;
.super Lcom/lenovo/scg/gallery3d/app/PhotoPage;
.source "FilmstripPage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;-><init>()V

    return-void
.end method


# virtual methods
.method public forceUnlockOrientation()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->forceUnlockOrientation()V

    .line 41
    return-void
.end method

.method public getOrientationCompensation()I
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getOrientationCompensation()I

    move-result v0

    return v0
.end method

.method public isCanScroller()Z
    .locals 1

    .prologue
    .line 46
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
    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->onDeleteBrush(Lcom/lenovo/scg/gallery3d/data/Path;ILcom/lenovo/scg/gallery3d/data/Path;)V

    .line 58
    return-void
.end method

.method public restoreOrientationState()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->restoreOrientationState()V

    .line 35
    return-void
.end method

.method public saveOrientationState()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->saveOrientationState()V

    .line 29
    return-void
.end method

.method public unlockOrientation()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method
