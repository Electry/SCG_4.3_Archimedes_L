.class public Lcom/lenovo/scg/camera/mode/RewindMode$Size;
.super Ljava/lang/Object;
.source "RewindMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/RewindMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1170
    iput p1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->width:I

    .line 1171
    iput p2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->height:I

    .line 1172
    return-void
.end method

.method public static scaleSize(Lcom/lenovo/scg/camera/mode/RewindMode$Size;F)Lcom/lenovo/scg/camera/mode/RewindMode$Size;
    .locals 5
    .param p0, "size"    # Lcom/lenovo/scg/camera/mode/RewindMode$Size;
    .param p1, "scale"    # F

    .prologue
    .line 1175
    iget v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->width:I

    int-to-float v2, v2

    div-float v1, v2, p1

    .line 1176
    .local v1, "w":F
    iget v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->height:I

    int-to-float v2, v2

    div-float v0, v2, p1

    .line 1178
    .local v0, "h":F
    new-instance v2, Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/camera/mode/RewindMode$Size;-><init>(II)V

    return-object v2
.end method
