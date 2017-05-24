.class Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;
.super Ljava/lang/Object;
.source "Le3dContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/le3d/Le3dContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigState"
.end annotation


# instance fields
.field mAlpha:F

.field mMatrix:[F

.field mNextFree:Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;->mMatrix:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dContext$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/common/le3d/Le3dContext$1;

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;-><init>()V

    return-void
.end method


# virtual methods
.method public restore(Lcom/lenovo/scg/common/le3d/Le3dContext;)V
    .locals 4
    .param p1, "canvas"    # Lcom/lenovo/scg/common/le3d/Le3dContext;

    .prologue
    const/4 v3, 0x0

    .line 506
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;->mMatrix:[F

    aget v0, v0, v3

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dContext$ConfigState;->mMatrix:[F

    # getter for: Lcom/lenovo/scg/common/le3d/Le3dContext;->mMMatrix:[F
    invoke-static {p1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->access$000(Lcom/lenovo/scg/common/le3d/Le3dContext;)[F

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    :cond_0
    return-void
.end method
