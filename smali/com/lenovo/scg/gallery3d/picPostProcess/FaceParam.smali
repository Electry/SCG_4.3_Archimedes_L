.class public Lcom/lenovo/scg/gallery3d/picPostProcess/FaceParam;
.super Lcom/lenovo/scg/gallery3d/picPostProcess/EffectParam;
.source "FaceParam.java"


# instance fields
.field private mColorNum:J

.field private mColorRGBs:[J

.field private mIsRemove:Z

.field private mModel:[B

.field private mModelSize:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/picPostProcess/EffectParam;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FaceParam;->mIsRemove:Z

    .line 10
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FaceParam;->mColorNum:J

    .line 12
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FaceParam;->mColorRGBs:[J

    .line 14
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FaceParam;->mModel:[B

    .line 16
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FaceParam;->mModelSize:J

    .line 20
    return-void
.end method


# virtual methods
.method public getmColorNum()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FaceParam;->mColorNum:J

    return-wide v0
.end method

.method public getmColorRGBs()[J
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FaceParam;->mColorRGBs:[J

    return-object v0
.end method

.method public getmModel()[B
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FaceParam;->mModel:[B

    return-object v0
.end method

.method public getmModelSize()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FaceParam;->mModelSize:J

    return-wide v0
.end method

.method public ismIsRemove()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FaceParam;->mIsRemove:Z

    return v0
.end method

.method public setmColorNum(J)V
    .locals 1
    .param p1, "mColorNum"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FaceParam;->mColorNum:J

    .line 36
    return-void
.end method

.method public setmColorRGBs([J)V
    .locals 0
    .param p1, "mColorRGBs"    # [J

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FaceParam;->mColorRGBs:[J

    .line 44
    return-void
.end method

.method public setmIsRemove(Z)V
    .locals 0
    .param p1, "mIsRemove"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FaceParam;->mIsRemove:Z

    .line 28
    return-void
.end method

.method public setmModel([B)V
    .locals 0
    .param p1, "mModel"    # [B

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FaceParam;->mModel:[B

    .line 52
    return-void
.end method

.method public setmModelSize(J)V
    .locals 1
    .param p1, "mModelSize"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/FaceParam;->mModelSize:J

    .line 60
    return-void
.end method
