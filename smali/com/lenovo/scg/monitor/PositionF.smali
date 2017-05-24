.class public Lcom/lenovo/scg/monitor/PositionF;
.super Ljava/lang/Object;
.source "PositionF.java"


# instance fields
.field private xPositionF:F

.field private yPosttionF:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/lenovo/scg/monitor/PositionF;->xPositionF:F

    .line 15
    iput v0, p0, Lcom/lenovo/scg/monitor/PositionF;->yPosttionF:F

    .line 20
    return-void
.end method


# virtual methods
.method public getxPositionF()F
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/lenovo/scg/monitor/PositionF;->xPositionF:F

    return v0
.end method

.method public getyPosttionF()F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/lenovo/scg/monitor/PositionF;->yPosttionF:F

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/lenovo/scg/monitor/PositionF;->xPositionF:F

    .line 40
    iput v0, p0, Lcom/lenovo/scg/monitor/PositionF;->yPosttionF:F

    .line 41
    return-void
.end method

.method public setxPositionF(F)V
    .locals 0
    .param p1, "xPositionF"    # F

    .prologue
    .line 27
    iput p1, p0, Lcom/lenovo/scg/monitor/PositionF;->xPositionF:F

    .line 28
    return-void
.end method

.method public setyPosttionF(F)V
    .locals 0
    .param p1, "yPosttionF"    # F

    .prologue
    .line 35
    iput p1, p0, Lcom/lenovo/scg/monitor/PositionF;->yPosttionF:F

    .line 36
    return-void
.end method
