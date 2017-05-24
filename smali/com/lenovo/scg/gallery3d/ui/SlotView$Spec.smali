.class public Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;
.super Ljava/lang/Object;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# instance fields
.field public bottomMenuBarHeight:I

.field public rowsLand:I

.field public rowsPort:I

.field public slotGap:I

.field public slotHeight:I

.field public slotHeightAdditional:I

.field public slotWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->slotWidth:I

    .line 511
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->slotHeight:I

    .line 513
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->slotHeightAdditional:I

    .line 515
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->rowsLand:I

    .line 517
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->rowsPort:I

    .line 519
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->slotGap:I

    .line 522
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->bottomMenuBarHeight:I

    return-void
.end method
