.class public Lcom/lenovo/scg/gallery3d/facepretty/data/DefaultFacePrettyParam;
.super Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;
.source "DefaultFacePrettyParam.java"


# instance fields
.field protected mEyeEnlargmentLevel:I

.field protected mSkinBrightLevel:I

.field protected mSkinSoftenLevel:I

.field protected mSlenderFaceLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;-><init>()V

    .line 5
    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/data/DefaultFacePrettyParam;->mSkinBrightLevel:I

    .line 7
    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/data/DefaultFacePrettyParam;->mSlenderFaceLevel:I

    .line 9
    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/data/DefaultFacePrettyParam;->mEyeEnlargmentLevel:I

    .line 11
    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/data/DefaultFacePrettyParam;->mSkinSoftenLevel:I

    return-void
.end method
