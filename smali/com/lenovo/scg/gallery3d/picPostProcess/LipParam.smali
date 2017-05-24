.class public Lcom/lenovo/scg/gallery3d/picPostProcess/LipParam;
.super Lcom/lenovo/scg/gallery3d/picPostProcess/EffectParam;
.source "LipParam.java"


# instance fields
.field private mColor:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/picPostProcess/EffectParam;-><init>()V

    .line 7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/LipParam;->mColor:J

    .line 11
    return-void
.end method


# virtual methods
.method public getmColor()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/LipParam;->mColor:J

    return-wide v0
.end method

.method public setmColor(J)V
    .locals 1
    .param p1, "mColor"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/picPostProcess/LipParam;->mColor:J

    .line 31
    return-void
.end method
