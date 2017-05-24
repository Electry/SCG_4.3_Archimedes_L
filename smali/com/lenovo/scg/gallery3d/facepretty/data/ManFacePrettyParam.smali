.class public Lcom/lenovo/scg/gallery3d/facepretty/data/ManFacePrettyParam;
.super Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;
.source "ManFacePrettyParam.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    const/16 v0, 0xa

    .line 6
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;-><init>()V

    .line 8
    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;->mSkinBrightLevel:I

    .line 9
    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;->mSlenderFaceLevel:I

    .line 10
    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;->mEyeEnlargmentLevel:I

    .line 11
    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;->mSkinSoftenLevel:I

    .line 13
    return-void
.end method
