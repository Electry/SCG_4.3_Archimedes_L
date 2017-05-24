.class public Lcom/lenovo/scg/common/le3d/Position;
.super Ljava/lang/Object;
.source "Position.java"


# instance fields
.field public X:F

.field public Y:F

.field public Z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Position;->X:F

    .line 13
    iput p2, p0, Lcom/lenovo/scg/common/le3d/Position;->Y:F

    .line 14
    iput p3, p0, Lcom/lenovo/scg/common/le3d/Position;->Z:F

    .line 15
    return-void
.end method
