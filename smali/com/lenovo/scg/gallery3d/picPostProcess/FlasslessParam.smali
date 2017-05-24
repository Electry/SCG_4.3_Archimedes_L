.class public Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
.super Ljava/lang/Object;
.source "FlasslessParam.java"


# instance fields
.field protected mEyeBrightLevel:I

.field protected mEyeEnlargmentLevel:I

.field private mNoseHighlightLevel:I

.field protected mRemoveShineLevel:I

.field protected mSkinBrightLevel:I

.field protected mSkinSoftenLevel:I

.field protected mSlenderFaceLevel:I

.field protected mTeethWhiteLevel:I

.field private mbDeBlemish:Z

.field private mbDepouch:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mbDeBlemish:Z

    .line 13
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mbDepouch:Z

    .line 18
    iput v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mEyeBrightLevel:I

    .line 23
    iput v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mTeethWhiteLevel:I

    .line 28
    iput v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mRemoveShineLevel:I

    .line 33
    iput v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mSkinSoftenLevel:I

    .line 38
    iput v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mSkinBrightLevel:I

    .line 42
    iput v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mNoseHighlightLevel:I

    .line 47
    iput v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mEyeEnlargmentLevel:I

    .line 52
    iput v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mSlenderFaceLevel:I

    return-void
.end method


# virtual methods
.method public getMlSkinBrightLevel()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mSkinBrightLevel:I

    return v0
.end method

.method public getlRemoveShineLevel()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mRemoveShineLevel:I

    return v0
.end method

.method public getmEyeBrightLevel()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mEyeBrightLevel:I

    return v0
.end method

.method public getmEyeEnlargmentLevel()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mEyeEnlargmentLevel:I

    return v0
.end method

.method public getmNoseHighlightLevel()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mNoseHighlightLevel:I

    return v0
.end method

.method public getmSkinSoftenLevel()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mSkinSoftenLevel:I

    return v0
.end method

.method public getmSlenderFaceLevel()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mSlenderFaceLevel:I

    return v0
.end method

.method public getmTeethWhiteLevel()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mTeethWhiteLevel:I

    return v0
.end method

.method public isMbDeBlemish()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mbDeBlemish:Z

    return v0
.end method

.method public isMbDepouch()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mbDepouch:Z

    return v0
.end method

.method public setMbDeBlemish(Z)V
    .locals 0
    .param p1, "mbDeBlemish"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mbDeBlemish:Z

    .line 103
    return-void
.end method

.method public setMbDepouch(Z)V
    .locals 0
    .param p1, "mbDepouch"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mbDepouch:Z

    .line 111
    return-void
.end method

.method public setlRemoveShineLevel(I)V
    .locals 0
    .param p1, "lRemoveShineLevel"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mRemoveShineLevel:I

    .line 63
    return-void
.end method

.method public setmEyeBrightLevel(I)V
    .locals 0
    .param p1, "mEyeBrightLevel"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mEyeBrightLevel:I

    .line 71
    return-void
.end method

.method public setmEyeEnlargmentLevel(I)V
    .locals 0
    .param p1, "mEyeEnlargmentLevel"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mEyeEnlargmentLevel:I

    .line 127
    return-void
.end method

.method public setmNoseHighlightLevel(I)V
    .locals 0
    .param p1, "mNoseHighlightLevel"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mNoseHighlightLevel:I

    .line 119
    return-void
.end method

.method public setmSkinBrightLevel(I)V
    .locals 0
    .param p1, "mSkinBrightLevel"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mSkinBrightLevel:I

    .line 95
    return-void
.end method

.method public setmSkinSoftenLevel(I)V
    .locals 0
    .param p1, "mSkinSoftenLevel"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mSkinSoftenLevel:I

    .line 87
    return-void
.end method

.method public setmSlenderFaceLevel(I)V
    .locals 0
    .param p1, "mSlenderFaceLevel"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mSlenderFaceLevel:I

    .line 135
    return-void
.end method

.method public setmTeethWhiteLevel(I)V
    .locals 0
    .param p1, "mTeethWhiteLevel"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->mTeethWhiteLevel:I

    .line 79
    return-void
.end method
