.class public Lcom/lenovo/scg/monitor/Position;
.super Ljava/lang/Object;
.source "Position.java"


# instance fields
.field private xPosition:I

.field private yPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/lenovo/scg/monitor/Position;->xPosition:I

    .line 15
    iput v0, p0, Lcom/lenovo/scg/monitor/Position;->yPosition:I

    .line 41
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/lenovo/scg/monitor/Position;->xPosition:I

    .line 15
    iput v0, p0, Lcom/lenovo/scg/monitor/Position;->yPosition:I

    .line 46
    iput p1, p0, Lcom/lenovo/scg/monitor/Position;->xPosition:I

    .line 47
    iput p2, p0, Lcom/lenovo/scg/monitor/Position;->yPosition:I

    .line 48
    return-void
.end method


# virtual methods
.method public getxPosition()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/lenovo/scg/monitor/Position;->xPosition:I

    return v0
.end method

.method public getyPosition()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/lenovo/scg/monitor/Position;->yPosition:I

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/lenovo/scg/monitor/Position;->xPosition:I

    .line 35
    iput v0, p0, Lcom/lenovo/scg/monitor/Position;->yPosition:I

    .line 36
    return-void
.end method

.method public setxPosition(I)V
    .locals 0
    .param p1, "xPosition"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/lenovo/scg/monitor/Position;->xPosition:I

    .line 23
    return-void
.end method

.method public setyPosition(I)V
    .locals 0
    .param p1, "yPosition"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/lenovo/scg/monitor/Position;->yPosition:I

    .line 31
    return-void
.end method
