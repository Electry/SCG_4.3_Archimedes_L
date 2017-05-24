.class public Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;
.super Lcom/lenovo/scg/gallery3d/picPostProcess/EffectParam;
.source "EyeParam.java"


# instance fields
.field private mColor:J

.field private mColorNum:J

.field private mColorRGBs:[J

.field private mLowerModel:[B

.field private mLowerModelSize:J

.field private mModel:[B

.field private mModelSize:J

.field private mUpperModel:[B

.field private mUpperModelSize:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/picPostProcess/EffectParam;-><init>()V

    .line 5
    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mColor:J

    .line 7
    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mColorNum:J

    .line 9
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mColorRGBs:[J

    .line 11
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mModel:[B

    .line 13
    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mModelSize:J

    .line 15
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mUpperModel:[B

    .line 17
    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mUpperModelSize:J

    .line 19
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mLowerModel:[B

    .line 21
    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mLowerModelSize:J

    .line 25
    return-void
.end method


# virtual methods
.method public getmColor()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mColor:J

    return-wide v0
.end method

.method public getmColorNum()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mColorNum:J

    return-wide v0
.end method

.method public getmColorRGBs()[J
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mColorRGBs:[J

    return-object v0
.end method

.method public getmLowerModel()[B
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mLowerModel:[B

    return-object v0
.end method

.method public getmLowerModelSize()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mLowerModelSize:J

    return-wide v0
.end method

.method public getmModel()[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mModel:[B

    return-object v0
.end method

.method public getmModelSize()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mModelSize:J

    return-wide v0
.end method

.method public getmUpperModel()[B
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mUpperModel:[B

    return-object v0
.end method

.method public getmUpperModelSize()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mUpperModelSize:J

    return-wide v0
.end method

.method public setmColor(J)V
    .locals 1
    .param p1, "mColor"    # J

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mColor:J

    .line 33
    return-void
.end method

.method public setmColorNum(J)V
    .locals 1
    .param p1, "mColorNum"    # J

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mColorNum:J

    .line 41
    return-void
.end method

.method public setmColorRGBs([J)V
    .locals 0
    .param p1, "mColorRGBs"    # [J

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mColorRGBs:[J

    .line 49
    return-void
.end method

.method public setmLowerModel([B)V
    .locals 0
    .param p1, "mLowerModel"    # [B

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mLowerModel:[B

    .line 89
    return-void
.end method

.method public setmLowerModelSize(J)V
    .locals 1
    .param p1, "mLowerModelSize"    # J

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mLowerModelSize:J

    .line 97
    return-void
.end method

.method public setmModel([B)V
    .locals 0
    .param p1, "mModel"    # [B

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mModel:[B

    .line 57
    return-void
.end method

.method public setmModelSize(J)V
    .locals 1
    .param p1, "mModelSize"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mModelSize:J

    .line 65
    return-void
.end method

.method public setmUpperModel([B)V
    .locals 0
    .param p1, "mUpperModel"    # [B

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mUpperModel:[B

    .line 73
    return-void
.end method

.method public setmUpperModelSize(J)V
    .locals 1
    .param p1, "mUpperModelSize"    # J

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EyeParam;->mUpperModelSize:J

    .line 81
    return-void
.end method
