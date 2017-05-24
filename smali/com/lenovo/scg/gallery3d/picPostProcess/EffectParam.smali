.class public Lcom/lenovo/scg/gallery3d/picPostProcess/EffectParam;
.super Ljava/lang/Object;
.source "EffectParam.java"


# instance fields
.field private mLevel:J

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EffectParam;->mType:I

    .line 7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EffectParam;->mLevel:J

    .line 11
    return-void
.end method


# virtual methods
.method public getmLevel()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EffectParam;->mLevel:J

    return-wide v0
.end method

.method public getmType()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EffectParam;->mType:I

    return v0
.end method

.method public setmLevel(J)V
    .locals 1
    .param p1, "mLevel"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EffectParam;->mLevel:J

    .line 27
    return-void
.end method

.method public setmType(I)V
    .locals 0
    .param p1, "mType"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/EffectParam;->mType:I

    .line 19
    return-void
.end method
